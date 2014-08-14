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

    .\Tools\innounp\innounp.exe -x -dImage .\DL\R-devel-win.exe
    mv ".\Image\{app}" .\Image\R
    rm .\Image\install_script.iss

    #.\Tools\innounp\innounp.exe -x -dImage .\DL\Rtools-current.exe
    #mv ".\Image\{app}" .\Image\Rtools
}

Function CreateImage {
    [CmdletBinding()]
    Param()

    .\Tools\DiscUtils\ISOCreate.exe -vollabel "R-portable" -time .\R.iso .\Image
}
