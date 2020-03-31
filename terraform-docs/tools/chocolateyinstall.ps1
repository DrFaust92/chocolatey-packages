$ErrorActionPreference = 'Stop'
 
$packageName = 'terraform-docs'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2868c12e72ce89cfa4477d22b7b36bdb6e7c2c1f600bd852e8fed1e0508915e3'
$url      = 'https://github.com/segmentio/terraform-docs/releases/download/v0.9.0/terraform-docs-v0.9.0-windows-amd64.exe'
$destination = "$toolsPath\terraform-docs.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
