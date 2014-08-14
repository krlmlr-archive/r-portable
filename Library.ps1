# Found at http://zduck.com/2012/powershell-batch-files-exit-codes/
Function Exec
{
    [CmdletBinding()]
    param (
        [Parameter(Position=0, Mandatory=1)]
        [scriptblock]$Command,
        [Parameter(Position=1, Mandatory=0)]
        [string]$ErrorMessage = "Execution of command failed.`n$Command"
    )
    $ErrorActionPreference = "Continue"
    & $Command 2>&1 | %{ "$_" }
    if ($LastExitCode -ne 0) {
        throw "Exec: $ErrorMessage`nExit code: $LastExitCode"
    }
}

Function Download {
    [CmdletBinding()]
    Param()

    Invoke-WebRequest http://cran.r-project.org/bin/windows/base/R-devel-win.exe -OutFile .\DL\R-devel-win.exe
    $rtoolsver = $(Invoke-WebRequest http://cran.r-project.org/bin/windows/Rtools/VERSION.txt).Content.Split(' ')[2].Split('.')[0..1] -Join ''
    $rtoolsurl = "http://cran.r-project.org/bin/windows/Rtools/Rtools$rtoolsver.exe"
    Invoke-WebRequest $rtoolsurl -OutFile "DL\Rtools-current.exe"
}

Function Unpack {
    [CmdletBinding()]
    Param()

    #rm -Recurse -Force .\Image
    md .\Image

    # R
    .\Tools\innounp\innounp.exe -x -dImage .\DL\R-devel-win.exe
    mv ".\Image\{app}" .\Image\R
    rm .\Image\install_script.iss

    # R packages devtools and testthat
    Exec { .\Image\R\bin\i386\Rscript.exe -e "install.packages(commandArgs(TRUE), repos='http://cran.r-project.org')" devtools testthat knitr }

    # Rtools
    .\Tools\innounp\innounp.exe -x -dImage .\DL\Rtools-current.exe
    mv ".\Image\{app}" .\Image\Rtools
    rm .\Image\install_script.iss
    # Don't seem to need those to build packages -- only to build R
    rm ".\Image\{code_rhome}" -Recurse
    rm ".\Image\{code_rhome64}" -Recurse
}

Function CreateImage {
    [CmdletBinding()]
    Param()

    Exec { .\Image\R\bin\i386\Rscript.exe -e "knitr::knit('README.Rmd')" }
    $DiffOutput = (git diff README.md) | Out-String
    If ($DiffOutput.Length -eq 0) {
        Write-Host "Image does not appear to have changed, exiting." -ForegroundColor Yellow
        Return
    }

    $DiffOutput

    .\Tools\DiscUtils\ISOCreate.exe -vollabel "R-portable" -time .\R.iso .\Image

    Exec { git add README.md }
    Exec { git commit -m "[skip ci] auto-generated README.md" }
}
