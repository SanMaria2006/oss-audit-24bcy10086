# OSS Audit — Git
**Student Name:** San Maria Job
**Registration Number:** 24BCY10086
**Chosen Software:** Git (GPL v2)

## Scripts
| Script | Purpose |
|--------|---------|
| script1_system_identity.sh | Displays system info as a welcome screen |
| script2_package_inspector.sh | Checks if Git is installed, shows details |
| script3_disk_auditor.sh | Audits key directory permissions and sizes |
| script4_log_analyzer.sh | Counts keyword occurrences in a log file |
| script5_manifesto.sh | Generates a personal open source manifesto |

## How to Run
```bash
chmod +x scripts/*.sh
bash scripts/script1_system_identity.sh
bash scripts/script2_package_inspector.sh
bash scripts/script3_disk_auditor.sh
bash scripts/script4_log_analyzer.sh ~/test.log error
bash scripts/script5_manifesto.sh
```

## Dependencies
- WSL / Ubuntu Linux
- Git (sudo apt install git)
- No other dependencies required
