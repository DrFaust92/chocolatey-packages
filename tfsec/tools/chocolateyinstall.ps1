$ErrorActionPreference = 'Stop'
 
$packageName = 'tfsec'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url      = 'https://github.com/liamg/tfsec/releases/download/v0.19.0/tfsec-windows-amd64.exe'
$destination = "$toolsPath\tfsec.exe"

if (Test-Path "$toolsPath\tfsec.exe") {
  Remove-Item "$toolsPath\tfsec.exe"
  Uninstall-BinFile -Name "tfsec" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url