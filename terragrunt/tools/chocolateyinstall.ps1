$ErrorActionPreference = 'Stop'
 
$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'd520065d10141f3a43d269d1af3f911c307f3aea15119f8905928a3d68f4f243'
$url      = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.18.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt_windows_amd64.exe"

if (Test-Path "$toolsPath\terragrunt.exe") {
  Remove-Item "$toolsPath\terragrunt.exe"
  Uninstall-BinFile -Name "terragrunt" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
Rename-Item -Path "$toolsPath\terragrunt_windows_amd64.exe" -NewName "terragrunt.exe"
