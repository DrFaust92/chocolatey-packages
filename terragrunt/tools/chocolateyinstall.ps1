$ErrorActionPreference = 'Stop'
 
$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '05fa4e2d31ecb4e7874960959f0b681042e14b0610b9e55d17cde797d2c49963'
$url      = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
