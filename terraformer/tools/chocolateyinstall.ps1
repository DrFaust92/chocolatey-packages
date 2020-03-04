$ErrorActionPreference = 'Stop'

$packageName = 'terraformer'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url = 'https://github.com/GoogleCloudPlatform/terraformer/releases/download/0.8.6/terraformer-all-windows-amd64.exe'
$destination = "$toolsPath\terraformer-all-windows-amd64.exe"

if (Test-Path "$toolsPath\terraformer.exe")
{
  Remove-Item "$toolsPath\terraformer.exe"
  Uninstall-BinFile -Name "terraformer" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url
Rename-Item -Path "$toolsPath\terraformer-all-windows-amd64.exe" -NewName "terraformer.exe"
