$ErrorActionPreference = 'Stop'
 
$packageName = 'terraform-docs'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '7e9ad7923b46225fda0982cf42bc478e191f7e20c70feece171fedd9348f6699'
$url      = 'https://github.com/segmentio/terraform-docs/releases/download/v0.8.1/terraform-docs-v0.8.1-windows-amd64.exe'
$destination = "$toolsPath\terraform-docs-v0.8.1-windows-amd64.exe"

if (Test-Path "$toolsPath\terraform-docs.exe") {
  Remove-Item "$toolsPath\terraform-docs.exe"
  Uninstall-BinFile -Name "terraform-docs" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
Rename-Item -Path "$toolsPath\terraform-docs-v0.8.1-windows-amd64.exe" -NewName "terraform-docs.exe"
