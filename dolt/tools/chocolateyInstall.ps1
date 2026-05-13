$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = 'f000ca8805e884820034a3df9d6fa4502c19de7e52e1440d16d08e49a53f3d5f'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v2.0.2/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
