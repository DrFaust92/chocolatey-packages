$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '81e1fed14fa396920608fc613104e7b8c007d9e98435854fd45a34c692cf91b0'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.28.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
