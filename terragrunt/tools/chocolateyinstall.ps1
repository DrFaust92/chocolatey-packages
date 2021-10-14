$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9A72AD06FAA7CF3E83B7F3682FDEC33339294F50882FAA40AA718B79210CF012'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
