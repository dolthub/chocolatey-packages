$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = 'a86f7b2178e46f49d2551a0140cf02914a8e8cb25b5d85c5bddaff20b31d997a'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v1.26.0/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
