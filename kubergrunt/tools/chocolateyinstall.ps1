$ErrorActionPreference = 'Stop'

$packageName = 'kubergrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a4699480b2707fbd1051107d8bca8c280b1e8fe56d2c118e900af1fbc6e34e94'
$url = 'https://github.com/gruntwork-io/kubergrunt/releases/download/v0.5.12/kubergrunt_windows_amd64.exe'
$destination = "$toolsPath\kubergrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256