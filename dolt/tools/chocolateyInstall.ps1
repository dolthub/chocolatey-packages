$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = 'a0065338db6b8f92b32d95ce7f148e2937a913eb39864afe1b9c25a067c1f3f6'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v0.40.23/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
