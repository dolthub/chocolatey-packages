import-module au

$version  = $env:VERSION
$domain   = "https://github.com"
$releases = "$domain/dolthub/dolt/releases/tag/v" + $version

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
      "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
      "(?i)(^\s*checksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
    ".\dolt.nuspec" = @{
      "\<version\>.+" = "<version>$($Latest.Version)</version>"
      "\<releaseNotes\>.+" = "<releaseNotes>$($Latest.ReleaseNotes)</releaseNotes>"
    }
  }
}

# this actually just gets the specific version, not the latest release
function global:au_GetLatest {
  $download_page = Invoke-WebRequest -UseBasicParsing -Uri $releases

  $re    = '\.msi$'
  $url   = $download_page.links | ? href -match $re | select -First 1 -expand href

  @{
    URL64 = $domain + $url
    Version = $version
    ReleaseNotes = $releases
  }
}

update -ChecksumFor 64
