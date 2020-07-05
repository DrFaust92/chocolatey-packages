$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '50f13229b58d339e2fcc49d7ff65dd2c460725c9dd3377866d98dab5b7540bb6'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url = 'https://github.com/liamg/tfsec/releases/download/v0.23.0/tfsec-windows-amd64.exe'
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256