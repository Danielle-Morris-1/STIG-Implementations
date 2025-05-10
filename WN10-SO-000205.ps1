<#
.SYNOPSIS
This PowerShell script ensures the 'LmCompatibilityLevel' registry key is set to 5 under 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa'.

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1
    Date Created    : 2025-05-09
    Last Modified   : 2025-05-09
    Version         : 1.0
    STIG-ID         : WN10-SO-000205

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run as Administrator  
    PS C:\> .\WN10-SO-000205.ps1
#>

# Define registry path and values
$regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$valueName = "LmCompatibilityLevel"
$desiredValue = 5

# Ensure the registry path exists
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the required registry value
Set-ItemProperty -Path $regPath -Name $valueName -Value $desiredValue -Type DWord

# Output success message
Write-Host "'$valueName' has been successfully set to '$desiredValue' as required."
