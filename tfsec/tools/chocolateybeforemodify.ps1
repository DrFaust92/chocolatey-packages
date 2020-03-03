$ErrorActionPreference = "Stop"
write-host "Attempting to stop any running terraform-docs processes, to allow upgrade"
try
{
  $running = get-process terraform-docs
}
catch
{
  write-host "No running terraform-docs processes to stop"
  $running = @()
}
  
if ($running)
{
  write-host "Stopping terraform-docs processes"
  foreach($p in $running)
  {
    stop-process $p
    write-verbose "Stopped $($p.ProcessName) $($p.Id)"
  }
}