$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = 'eb4d726ad6f97e575bfb013f9a282c1d30761d97bbc3d78385820b23d7d5a878'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v2.3.5/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
