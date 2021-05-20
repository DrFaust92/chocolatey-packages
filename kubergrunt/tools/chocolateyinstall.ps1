$ErrorActionPreference = 'Stop'

$packageName = 'kubergrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'fbfa651d16a44dfafb3b1fb31550c4637f848456ca9576d5fb91930ec19a7c95'
$url = 'https://github.com/gruntwork-io/kubergrunt/releases/download/v0.6.16/kubergrunt_windows_amd64.exe'
$destination = "$toolsPath\kubergrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256