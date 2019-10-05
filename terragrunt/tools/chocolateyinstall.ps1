$ErrorActionPreference = 'Stop'
 
$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '330b3d608a8fb6dbf96f042e48c022cbcea55acc20413cf2b6ece05fd525ea5e'
$url      = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.19.29/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt_windows_amd64.exe"

if (Test-Path "$toolsPath\terragrunt.exe") {
  Remove-Item "$toolsPath\terragrunt.exe"
  Uninstall-BinFile -Name "terragrunt" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
Rename-Item -Path "$toolsPath\terragrunt_windows_amd64.exe" -NewName "terragrunt.exe"
