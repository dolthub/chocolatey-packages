$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'dolt'
  fileType       = 'MSI'
  softwareName   = 'dolt'

  checksum       = 'a49116cec96cb568f0b999bf883dbc8c35fc4076e483473b423da84d54f7f35a'
  checksumType   = 'sha256'
  url            = 'https://github.com/dolthub/dolt/releases/download/v1.83.0/dolt-windows-amd64.msi'

  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
