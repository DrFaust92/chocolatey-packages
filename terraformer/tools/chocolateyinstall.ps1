$ErrorActionPreference = 'Stop'

$packageName = 'terraformer'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f029a3425317e9a67ad913b5b2cc453287d91d0616c2bd93df9a79ee0a3ddda3'
$url = 'https://github.com/GoogleCloudPlatform/terraformer/releases/download/0.8.8/terraformer-all-windows-amd64.exe'
$destination = "$toolsPath\terraformer.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
