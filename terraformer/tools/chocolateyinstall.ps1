$ErrorActionPreference = 'Stop'

$packageName = 'terraformer'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2868c12e72ce89cfa4477d22b7b36bdb6e7c2c1f600bd852e8fed1e0508915e3'
$url = 'https://github.com/GoogleCloudPlatform/terraformer/releases/download/0.8.7/terraformer-all-windows-amd64.exe'
$destination = "$toolsPath\terraformer.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
