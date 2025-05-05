<#
.SYNOPSIS
Ensures BitLocker authentication settings are configured in compliance with Windows 10 DISA STIG.

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1
    Date Created    : 2025-05-06
    Last Modified   : 2025-05-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000031

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\WN10-00-000031.ps1
#>

# Define registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"

# Desired values for each registry key
$values = @{
    "UseAdvancedStartup" = 1
    "UseTPMPIN" = 1
    "UseTPMKeyPIN" = 1
}

# Create the registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Apply each STIG-compliant registry value
foreach ($name in $values.Keys) {
    Set-ItemProperty -Path $regPath -Name $name -Value $values[$name] -Type DWord
    Write-Host "'$name' has been successfully set to $($values[$name]) as required by the DISA STIG."
}

# Output success message
Write-Host "All BitLocker authentication registry settings have been configured successfully."
