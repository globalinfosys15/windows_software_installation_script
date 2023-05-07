# Set up variables
$chocoPath = "C:\ProgramData\chocolatey\bin\choco.exe"
$updateInterval = New-TimeSpan -Hours 24

# Loop through installed packages and update them
while ($true) {
    Get-ChocolateyPackage | ForEach-Object {
        & $chocoPath update $_.Name -y
    }
    Write-Host "Sleeping for $($updateInterval.Hours) hours $($updateInterval.Minutes) minutes $($updateInterval.Seconds) seconds"
    Start-Sleep $updateInterval
}
