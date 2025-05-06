<#
.SYNOPSIS
This PowerShell script ensures that webcam access is denied by setting the 'Value' registry key to 'Deny' under the CapabilityAccessManager ConsentStore.

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1   
    Date Created    : 2025-05-06
    Last Modified   : 2025-05-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000007

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\WN10-CC-000007.ps1
#>

# Define registry path and value
$regPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam"
$valueName = "Value"
$desiredValue = "Deny"

# Create the registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the registry value to Deny
Set-ItemProperty -Path $regPath -Name $valueName -Value $desiredValue -Type String

# Output success message
Write-Host "'$valueName' has been successfully set to '$desiredValue' as required."
