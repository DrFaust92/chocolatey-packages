$ErrorActionPreference = "Stop"
write-host "Attempting to stop any running kubergrunt processes, to allow upgrade"
try
{
  $running = get-process kubergrunt
}
catch
{
  write-host "No running kubergrunt processes to stop"
  $running = @()
}
  
if ($running)
{
  write-host "Stopping kubergrunt processes"
  foreach($p in $running)
  {
    stop-process $p
    write-verbose "Stopped $($p.ProcessName) $($p.Id)"
  }
}