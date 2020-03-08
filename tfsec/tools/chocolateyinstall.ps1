$ErrorActionPreference = 'Stop'
 
$packageName = 'tfsec'
$checksum = 'a264df87033c5046e42ef2189fcdb45fa362b434b76e686eaca77fb5c850f345'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url      = 'https://github.com/liamg/tfsec/releases/download/v0.19.0/tfsec-windows-amd64.exe'
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256