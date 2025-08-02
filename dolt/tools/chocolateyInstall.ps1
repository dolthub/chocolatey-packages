$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '7a61df90036e2996c963edbf15ac8e48ee56416a394cc4e7aeae0c08fdf91d4c'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v1.57.5/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
