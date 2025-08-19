$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '0008120b10e423a93962c77c64da615e2d29887155ab28043d15fa8bc6a5ba7f'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v1.58.4/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
