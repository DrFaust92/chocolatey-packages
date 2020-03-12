$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e84810cfcc1c77c03dfbaeb71114c54136080026c64efe621ac5ccdec9b8a219'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
