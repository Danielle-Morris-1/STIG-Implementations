<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1
    Date Created    : 2025-05-04
    Last Modified   : 2025-05-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\WN10-AU-000500.ps1 
#>

# Ensure the script is run with Administrator privileges

# Define the registry path
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$name = "MaxSize"
$value = 0x8000

# Check if the registry path exists, and create it if it doesn't
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
    Write-Output "Created registry path: $registryPath"
}

# Set the registry value (DWORD); use -Force to overwrite if it already exists
New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWord -Force | Out-Null

# Output success message
Write-Output "Successfully set '$name' to $value (0x8000) under $registryPath"
