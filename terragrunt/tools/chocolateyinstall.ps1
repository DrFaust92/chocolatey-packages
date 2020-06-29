$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b66fe99eeaacef9dc8c9692c0f5b305b4925a76f68f05ebc7782a5edf5a97e6a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.29/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
