$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '33305e0b93df13212c249f0bf4143502b17f5a3df7addec499fce29bcc0b881f'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url = 'https://github.com/liamg/tfsec/releases/download/v0.24.1/tfsec-windows-amd64.exe'
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256