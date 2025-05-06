<#
.SYNOPSIS
This PowerShell script ensures that the 'MinimumPIN' registry key is set to 6 or greater under the 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE' registry path.

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1
    Date Created    : 2025-05-06
    Last Modified   : 2025-05-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000032

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run as Administrator
    PS C:\> .\WN10-00-000032.ps1
#>

# Define registry path and value
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"
$valueName = "MinimumPIN"
$desiredValue = 6

# Check if the registry key exists
if (-not (Test-Path $regPath)) {
    # Create the registry path if it doesn't exist
    New-Item -Path $regPath -Force | Out-Null
}

# Check if the registry value exists and is configured correctly
$currentValue = Get-ItemProperty -Path $regPath -Name $valueName -ErrorAction SilentlyContinue

# If the value is missing or incorrect, set it to the desired value
if ($currentValue.$valueName -ne $desiredValue) {
    Set-ItemProperty -Path $regPath -Name $valueName -Value $desiredValue -Type DWord
    Write-Host "The registry value '$valueName' has been set to $desiredValue."
} else {
    Write-Host "The registry value '$valueName' is already configured correctly."
}
