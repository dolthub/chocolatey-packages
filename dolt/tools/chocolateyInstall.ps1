$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = '834407710cc1173abd1e83265d3841c74f4768a4d70fc9d3e91302ceaa2d09ef'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v2.1.5/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
