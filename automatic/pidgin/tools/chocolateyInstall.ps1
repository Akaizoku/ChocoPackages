﻿$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    url           = 'https://sourceforge.net/projects/pidgin/files/Pidgin/2.14.9/pidgin-2.14.9-offline.exe/download'
    checksum 		  = '160fc847175c55171cede5d030b5f730befa639365d61d3032417d331252989f'
    checksumType 	= 'SHA256'
    fileType      = 'EXE'
    silentArgs    = '/S'
    validExitCodes = @(0)
}

Stop-Process -ProcessName pidgin* -ErrorAction SilentlyContinue -Force
Install-ChocolateyPackage @packageArgs
