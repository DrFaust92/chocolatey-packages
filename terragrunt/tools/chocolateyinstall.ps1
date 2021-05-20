$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f411c811153c45fc40937e7ac23c2ff258f72436e3cc43ce18cab3c6314f33d8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.29.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
