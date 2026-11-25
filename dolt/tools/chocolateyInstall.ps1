$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '7e66d026edf17403a33f9c050d559f35618e99c8c9a4769bdded8a2454b65256'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v2.7.7/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
