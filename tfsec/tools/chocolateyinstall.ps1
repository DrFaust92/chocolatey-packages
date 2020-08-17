$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '3e8e74d3735231189e617ef99459c4bd9dd533dbdb1278573a7af55b54686f64'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url = 'https://github.com/liamg/tfsec/releases/download/v0.25.0/tfsec-windows-amd64.exe'
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256