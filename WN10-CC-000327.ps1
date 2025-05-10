<#
.SYNOPSIS
This PowerShell script sets the 'EnableTranscripting' registry key to 1 under 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription'.

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1
    Date Created    : 2025-05-10
    Last Modified   : 2025-05-10
    Version         : 1.0
    STIG-ID         : WN10-CC-000327

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run as Administrator  
    PS C:\> .\WN10-CC-000327.ps1
#>

# Define registry path and values
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"
$valueName = "EnableTranscripting"
$desiredValue = 1

# Ensure the registry path exists
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the required registry value
Set-ItemProperty -Path $regPath -Name $valueName -Value $desiredValue -Type DWord

# Output success message
Write-Host "'$valueName' has been successfully set to '$desiredValue' as required."
