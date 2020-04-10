$ErrorActionPreference = 'Stop'

$packageName = 'terraform-docs'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1873ebf578d2e352881ae625be74b848ff5d83c93523030a0ce3448b39620b13'
$url = 'https://github.com/segmentio/terraform-docs/releases/download/v0.9.1/terraform-docs-v0.9.1-windows-amd64.exe'
$destination = "$toolsPath\terraform-docs.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
