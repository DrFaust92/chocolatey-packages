$ErrorActionPreference = 'Stop'
 
$packageName = 'tfsec'
$checksum = 'e264cb3020e9857ca64a79448c31dfa7811fbdb2d4fc94e74e25257012c53241'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url = 'https://github.com/liamg/tfsec/releases/download/v0.21.0/tfsec-windows-amd64.exe'
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256