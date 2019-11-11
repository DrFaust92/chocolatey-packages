$ErrorActionPreference = 'Stop'
 
$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'aff4a5947ea5acf6a04c47d313c208bd8b1a63976ae6b5732fa1b77d50525af9'
$url      = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.21.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt_windows_amd64.exe"

if (Test-Path "$toolsPath\terragrunt.exe") {
  Remove-Item "$toolsPath\terragrunt.exe"
  Uninstall-BinFile -Name "terragrunt" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
Rename-Item -Path "$toolsPath\terragrunt_windows_amd64.exe" -NewName "terragrunt.exe"
