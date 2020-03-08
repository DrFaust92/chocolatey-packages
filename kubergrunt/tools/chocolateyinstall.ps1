$ErrorActionPreference = 'Stop'
 
$packageName = 'kubergrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b973add2f07461b43a271b1378dbba1ea6f0a42adc9f29fad87fc0e77098aa46'
$url      = 'https://github.com/gruntwork-io/kubergrunt/releases/download/v0.5.10/kubergrunt_windows_amd64.exe'
$destination = "$toolsPath\kubergrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256