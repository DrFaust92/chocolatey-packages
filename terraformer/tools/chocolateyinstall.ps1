$ErrorActionPreference = 'Stop'

$packageName = 'terraformer'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url = 'https://github.com/GoogleCloudPlatform/terraformer/releases/download/0.8.6/terraformer-all-windows-amd64.exe'
$destination = "$toolsPath\terraformer.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url
