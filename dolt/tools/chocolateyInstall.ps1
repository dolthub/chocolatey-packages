$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '4bfe0a8d13c7453448ea0aadc28b312e2a5d16d2167c02cd6eee257909b34a63'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v0.51.9/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
