# 🛡️ DISA STIG Remediation PowerShell Scripts

This repository helps automate the remediation of Windows 10 security configurations in alignment with [DISA STIGs](https://stigaview.com/products/win10/v3r1/ ) requirements. By converting manual checklist items into executable PowerShell scripts, it supports faster deployment, improved consistency, and stronger system hardening across enterprise environments.

---
## 🚀 How to Use 

1. **Clone the repository**  
   Download the repository to your local machine:
   ```bash
   git clone https://github.com/Danielle-Morris-1/STIG-Remediation-Scripts.git
   cd STIG-remediation-scripts

2. **Run scripts in PowerShell (Admin)**

3. **Review logs or use verbose output where applicable**
   
---
## ✅ Best Practices

- Always run scripts in a test environment before deploying to production.

- Scripts assume native PowerShell on Windows 10.

- Pair with manual compliance checks for verification.


---
## 📘 Disclaimer

These scripts are provided for *educational use* and lab environments. Use at your own risk. Always test thoroughly before use in live systems.

---
## ✅ Remediated STIGs - Grouped by Security Focus


**🔐 Access Control / User Restrictions:**
Controls related to user permissions, lockout settings, and elevation behavior.

- `WN10-AC-000035` – Enforce minimum password length of 14 characters
- `WN10-CC-000165` – Restrict unauthenticated RPC client connections
- `WN10-CC-000052` – Windows 10 must prioritize longer ECC key lengths
- `WN10-SO-000230` – Use FIPS-compliant algorithms for crypto
- `WN10-SO-000120` – SMB server must always perform packet signing
- `WN10-SO-000100` – SMB client must always perform packet signing
- `WN10-CC-000360` – WinRM must not use Digest authentication
- `WN10-CC-000335` – WinRM must not allow unencrypted traffic


**🛡️ System Hardening / Attack Surface Reduction:**
Protects the OS from exploitation and reduces exposure to threats.

- `WN10-00-000031` – Require BitLocker PIN at startup
- `WN10-00-000032` – Require BitLocker PIN (min 6 digits) at startup
- `WN10-CC-000007` – Disable/cover unused built-in or attached cameras
- `WN10-CC-000190` – Autoplay must be disabled for all drives
- `WN10-CC-000185` – Disable default autorun commands
- `WN10-CC-000205` – Windows Telemetry must not be configured to Full
- `WN10-CC-000238` – Prevent certificate error overrides in Edge

**🔍 Audit & Monitoring:**
Ensures system and user activities are logged and traceable for investigations.

- `WN10-AU-000500` – Application event log size must be 32 MB or greater
- `WN10-AU-000505` – Ensure security log size is 1 GB or more
- `WN10-CC-000327` – Enable PowerShell Transcription on Windows 10

**🔒 Authentication & Credential Management:** Ensures secure logon processes and password handling

- `WN10-SO-000205` – Set LanMan Auth Level to NTLMv2 response only
- `WN10-CC-000050` – Harden UNC paths for \\SYSVOL and \\NETLOGON
- `WN10-CC-000145` – Require password on battery resume

---

## 🚀 Project Status

![Status](https://img.shields.io/badge/Status-Completed-yellow)
![PowerShell](https://img.shields.io/badge/Scripting-PowerShell-blue)
![Platform](https://img.shields.io/badge/Platform-Windows%2010-lightgrey)
![Security Focus](https://img.shields.io/badge/Focus-STIG%20Remediation-critical)
![Automation](https://img.shields.io/badge/Automation-Enabled-blueviolet)


---
>  🧱  *"A secure system is a well-configured system, built to defend and evolve."*
