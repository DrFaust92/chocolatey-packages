$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'fc3949f230abcdd76946a1f8f16333ada6e131a4e01c0cf7e6acf8a7da5ab88c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
