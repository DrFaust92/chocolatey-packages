$ErrorActionPreference = 'Stop'
 
$packageName = 'kubergrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url      = 'https://github.com/gruntwork-io/kubergrunt/releases/download/v0.5.10/kubergrunt_windows_amd64.exe'
$destination = "$toolsPath\kubergrunt_windows_amd64.exe"

if (Test-Path "$toolsPath\kubergrunt.exe") {
  Remove-Item "$toolsPath\kubergrunt.exe"
  Uninstall-BinFile -Name "kubergrunt" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url
Rename-Item -Path "$toolsPath\kubergrunt_windows_amd64.exe" -NewName "kubergrunt.exe"
