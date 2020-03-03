$ErrorActionPreference = 'Stop'
 
$packageName = 'kubegrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url      = 'https://github.com/gruntwork-io/kubergrunt/releases/download/v0.5.10/kubergrunt_windows_amd64.exe'
$destination = "$toolsPath\kubegrunt_windows_amd64.exe"

if (Test-Path "$toolsPath\kubegrunt.exe") {
  Remove-Item "$toolsPath\kubegrunt.exe"
  Uninstall-BinFile -Name "kubegrunt" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url
Rename-Item -Path "$toolsPath\kubegrunt_windows_amd64.exe" -NewName "kubegrunt.exe"
