$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'cff20dfee0539c49755978a29a70ceb68e08d4fcd11f961d0f159b527af306ff'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.27/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
