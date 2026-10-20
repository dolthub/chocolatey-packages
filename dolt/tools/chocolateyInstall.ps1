$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '811f3078ce39d4a09f2cdf8f3eff08b7fb33c9016266ff0acd3409f9d144fde6'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v2.5.1/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
