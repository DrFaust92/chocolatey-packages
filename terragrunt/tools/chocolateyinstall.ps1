$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '98cab53c46e02881e5084df0b1c0f2695239c730a05c7b4ab1de057773bb9f8f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.10/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
