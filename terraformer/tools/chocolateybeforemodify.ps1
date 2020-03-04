$ErrorActionPreference = "Stop"
write-host "Attempting to stop any running terraformer processes, to allow upgrade"
try
{
    $running = get-process terraformer
}
catch
{
    write-host "No running terraformer processes to stop"
    $running = @()
}

if ($running)
{
    write-host "Stopping terraformer processes"
    foreach ($p in $running)
    {
        stop-process $p
        write-verbose "Stopped $( $p.ProcessName ) $( $p.Id )"
    }
}