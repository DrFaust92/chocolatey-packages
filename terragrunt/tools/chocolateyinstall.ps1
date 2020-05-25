$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'd4d03d3519cadd9cd4ca82663adb9da6b74327ddaabf781b1170c9dd5ba92f63'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.20/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
