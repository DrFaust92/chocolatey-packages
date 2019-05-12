$ErrorActionPreference = "Stop"
write-host "Attempting to stop any running terragrunt processes, to allow upgrade"
try
{
  $running = get-process terragrunt
}
catch
{
  write-host "No running terragrunt processes to stop"
  $running = @()
}
  
if ($running)
{
  write-host "Stopping terragrunt processes"
  foreach($p in $running)
  {
    stop-process $p
    write-verbose "Stopped $($p.ProcessName) $($p.Id)"
  }
}