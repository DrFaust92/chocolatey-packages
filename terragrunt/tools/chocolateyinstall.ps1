$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'c2fc96828d1bad7d6dea1990e8e9a045649aea8a705dd4b6982a97cd02a91209'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.32/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
