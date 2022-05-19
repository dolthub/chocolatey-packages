$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '7f96556b8d69b6d83dbfcd7786470f25b74b61ef62f611bc0d7bb86d32c0f173'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v0.40.4/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
