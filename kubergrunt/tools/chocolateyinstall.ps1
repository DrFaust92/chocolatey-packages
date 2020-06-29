$ErrorActionPreference = 'Stop'

$packageName = 'kubergrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'bd10e471d5fb904dd2e4130875897e7c9335a8036c49b28be2d3d9e52d6e242b'
$url = 'https://github.com/gruntwork-io/kubergrunt/releases/download/v0.5.13/kubergrunt_windows_amd64.exe'
$destination = "$toolsPath\kubergrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256