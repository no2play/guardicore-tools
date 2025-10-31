# List of processes to check
$processNames = @(
    "gc-agents-service",
    "gc-launcher",
    "gc-cert-client",
    "osqueryd",
    "conhost"
)

# Loop through each process and display Name + Path
foreach ($p in $processNames) {
    $proc = Get-Process -Name $p -ErrorAction SilentlyContinue
    if ($proc) {
        foreach ($pr in $proc) {
            Write-Output "$($pr.Name) -> $($pr.Path)"
        }
    } else {
        Write-Output "$p -> Not running or not found"
    }
}
