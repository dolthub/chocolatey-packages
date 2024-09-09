$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '016ebf14d048808b8b525cd23496fa7b89d666761da615b1d34338760a3314bd'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v1.42.19/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
