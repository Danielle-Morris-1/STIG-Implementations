# 🛡️ STIG Remediation PowerShell Scripts

This repository helps automate the remediation of Windows 10 security configurations in alignment with [DISA STIGs](https://stigaview.com/products/win10/v3r1/ ) requirements. By converting manual checklist items into executable PowerShell scripts, it supports faster deployment, improved consistency, and stronger system hardening across enterprise environments.

---
## 🚀 How to Use 

1. **Clone the repository**  
   Download the repository to your local machine:
   ```bash
   git clone https://github.com/Danielle-Morris-1/STIG-remediation-scripts.git
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
## 📂 Script Examples

- `WN10-AU-000500.ps1`  
  Ensures the Windows Application Event Log max size is set to at least 32MB (32768 KB).

---

## 👩🏽‍💻 Maintainer

Created and maintained by Danielle Morris 

Feel free to open issues or contribute improvements!
