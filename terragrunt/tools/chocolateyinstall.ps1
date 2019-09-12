$ErrorActionPreference = 'Stop'
 
$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '64777dfe10ffe811019d93df0bd2b710e97f469c28c6681d2dd6719bc43d8483'
$url      = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.19.24/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt_windows_amd64.exe"

if (Test-Path "$toolsPath\terragrunt.exe") {
  Remove-Item "$toolsPath\terragrunt.exe"
  Uninstall-BinFile -Name "terragrunt" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
Rename-Item -Path "$toolsPath\terragrunt_windows_amd64.exe" -NewName "terragrunt.exe"
