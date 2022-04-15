$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = 'ea4aa60fe7fc2c83186b86e5c1a68217f085aa65b427e52a3b87207849521b28'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v0.39.0/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
