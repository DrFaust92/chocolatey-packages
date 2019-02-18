$ErrorActionPreference = 'Stop'
 
$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$url      = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.18.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt_windows_amd64.exe"

if (Test-Path "$toolsPath\terragrunt.exe") {
  Remove-Item "$toolsPath\terragrunt.exe"
  Uninstall-BinFile -Name "terragrunt" -Path "$toolsPath"
}

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url
Rename-Item -Path "$toolsPath\terragrunt_windows_amd64.exe" -NewName "terragrunt.exe"