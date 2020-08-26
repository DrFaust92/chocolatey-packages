$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '7b96ae405e8f4ab9a07a71ce02e58f050778a0f792f48fdb6bd63165cc96b008'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.36/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
