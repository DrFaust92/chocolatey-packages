$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'c03fb7010744f7a65b09914043e15581765cb771d7fd63c3c6c68ca532e57573'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.44/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
