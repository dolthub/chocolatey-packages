$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '5a41c0a7697ef06272f43ec50282f9cfcac0f3e8c289f6ddcf058c0322fbecdc'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v0.50.6/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
