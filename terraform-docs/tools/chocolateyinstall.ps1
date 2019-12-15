$ErrorActionPreference = 'Stop'
 
$packageName = 'terraform-docs'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '496edf41507033f32eafbab95def71adbbe172801a5268e46ab218fbf30eb100'
$url      = 'https://github.com/segmentio/terraform-docs/releases/download/v0.7.0/terraform-docs-v0.7.0-windows-amd64.exe'
$destination = "$toolsPath\terraform-docs-v0.7.0-windows-amd64.exe"

if (Test-Path "$toolsPath\terraform-docs.exe") {
  Remove-Item "$toolsPath\terraform-docs.exe"
  Uninstall-BinFile -Name "terraform-docs" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
Rename-Item -Path "$toolsPath\terraform-docs-v0.7.0-windows-amd64.exe" -NewName "terraform-docs.exe"
