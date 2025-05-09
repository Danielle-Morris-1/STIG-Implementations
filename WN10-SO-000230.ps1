<#
.SYNOPSIS
This PowerShell script ensures the 'Enabled' registry value is set to 1 under the 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\FIPSAlgorithmPolicy' key.

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1
    Date Created    : 2025-05-09
    Last Modified   : 2025-05-09
    Version         : 1.2
    STIG-ID         : WN10-SO-000230

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run as Administrator
    PS C:\> .\WN10-SO-000230.ps1
#>

# Define the correct registry path
$regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\FIPSAlgorithmPolicy"
$valueName = "Enabled"
$desiredValue = 1

# Create the key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the registry value
Set-ItemProperty -Path $regPath -Name $valueName -Value $desiredValue -Type DWord

# Output success message
Write-Host "'$valueName' has been successfully set to '$desiredValue' as required."
