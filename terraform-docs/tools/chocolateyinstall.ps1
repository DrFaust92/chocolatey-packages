$ErrorActionPreference = 'Stop'
 
$packageName = 'terraform-docs'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url      = 'https://github.com/segmentio/terraform-docs/releases/download/v0.6.0/terraform-docs-v0.6.0-windows-amd64.exe'
$destination = "$toolsPath\terraform-docs-v0.6.0-windows-amd64.exe"

if (Test-Path "$toolsPath\terraform-docs.exe") {
  Remove-Item "$toolsPath\terraform-docs.exe"
  Uninstall-BinFile -Name "terraform-docs" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url
Rename-Item -Path "$toolsPath\terraform-docs-v0.6.0-windows-amd64.exe" -NewName "terraform-docs.exe"
