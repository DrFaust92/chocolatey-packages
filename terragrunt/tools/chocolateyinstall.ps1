$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '135ad35d61d6ea174e0c8d7a632fc8e0a4df17e1230469cf68158ebef067bd63'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
