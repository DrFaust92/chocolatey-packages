$ErrorActionPreference = 'Stop'

$packageName = 'kubergrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'aa23b93772ea1ffa86b01e498e402ec061abe8baf050f2863e94ff549b4bf044'
$url = 'https://github.com/gruntwork-io/kubergrunt/releases/download/v0.5.11/kubergrunt_windows_amd64.exe'
$destination = "$toolsPath\kubergrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256