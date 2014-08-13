Function Download {
    [CmdletBinding()]
    Param()

    Invoke-WebRequest http://cran.r-project.org/bin/windows/base/R-devel-win.exe -OutFile .\DL\R-devel-win.exe
}

Function Unpack {
    [CmdletBinding()]
    Param()

    #rm -Recurse -Force .\Image
    md .\Image
    .\Tools\innounp\innounp.exe -x -dImage .\DL\R-devel-win.exe
    mv ".\Image\{app}" .\Image\R
    rm .\Image\install_script.iss
}

Function CreateImage {
    [CmdletBinding()]
    Param()

    #rm -Recurse -Force .\Output
    md .\Output

    .\Tools\DiscUtils\ISOCreate.exe -vollabel "R-portable" -time .\Output\R.iso .\Image
}