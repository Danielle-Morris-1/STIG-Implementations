<#

.SYNOPSIS

This PowerShell script ensures the 'Minimum password length' policy is configured to at least 14 characters.

.NOTES
    Author          : Danielle Morris
    LinkedIn        : linkedin.com/in/danielle-morris-04232368/
    GitHub          : github.com/Danielle-Morris-1
    Date Created    : 2025-05-06
    Last Modified   : 2025-05-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000035

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run as Administrator
    PS C:\> .\WN10-AC-000035.ps1
   

#>

# Define the minimum password length required
$minPasswordLength = 14

# Use 'net accounts' to set the minimum password length
net accounts /minpwlen:$minPasswordLength

# Output success message
Write-Host "'Minimum password length' has been successfully set to $minPasswordLength characters as required."
