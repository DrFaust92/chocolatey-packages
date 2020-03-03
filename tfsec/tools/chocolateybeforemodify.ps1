$ErrorActionPreference = "Stop"
write-host "Attempting to stop any running tfsec processes, to allow upgrade"
try
{
  $running = get-process tfsec
}
catch
{
  write-host "No running tfsec processes to stop"
  $running = @()
}
  
if ($running)
{
  write-host "Stopping tfsec processes"
  foreach($p in $running)
  {
    stop-process $p
    write-verbose "Stopped $($p.ProcessName) $($p.Id)"
  }
}