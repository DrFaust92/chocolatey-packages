$ErrorActionPreference = 'Stop'

$packageName = 'terraformer'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'cb3d2302229fcc5a995bc423cc34129af13fe90c1c43e96a943acfffaf4b29c7'
$url = 'https://github.com/GoogleCloudPlatform/terraformer/releases/download/0.8.13/terraformer-aws-windows-amd64.exe'
$destination = "$toolsPath\terraformer.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
