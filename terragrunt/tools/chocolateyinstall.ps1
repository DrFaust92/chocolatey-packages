$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '98453aa2ed87b148a6fe7e39c3feac687c06c75490cfe817bfdc145510a8b511'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.33/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
