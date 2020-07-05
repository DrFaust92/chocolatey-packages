$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '158dc39c98160fa00d19ce427cd8270d6dc443d64ee228711eb7918689311316'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.31/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
