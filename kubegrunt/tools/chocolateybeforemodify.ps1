$ErrorActionPreference = "Stop"
write-host "Attempting to stop any running kubegrunt processes, to allow upgrade"
try
{
  $running = get-process kubegrunt
}
catch
{
  write-host "No running kubegrunt processes to stop"
  $running = @()
}
  
if ($running)
{
  write-host "Stopping kubegrunt processes"
  foreach($p in $running)
  {
    stop-process $p
    write-verbose "Stopped $($p.ProcessName) $($p.Id)"
  }
}