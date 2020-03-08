$ErrorActionPreference = 'Stop'
 
$packageName = 'terraform-docs'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'dbba61a77e0317ec5d0977c9f10b88b272f177e8f9e29ead1232ce68a8ed4675'
$url      = 'https://github.com/segmentio/terraform-docs/releases/download/v0.8.2/terraform-docs-v0.8.2-windows-amd64.exe'
$destination = "$toolsPath\terraform-docs.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
