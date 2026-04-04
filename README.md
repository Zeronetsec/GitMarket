<!-- GitMarket Project -->

[![version](https://img.shields.io/badge/GitMarket-Version%201.0-blue.svg?maxAge=259200)]()
[![gover](https://img.shields.io/badge/Go-Version%201.26.1-blue.svg)]()
[![os](https://img.shields.io/badge/Supported%20OS-Linux-blue.svg)]()
[![license](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

# GitMarket
GitMarket is a powerful CLI-based marketplace designed to simplify how you find, install, and manage developer tools directly from your terminal. <br>
Built with speed and efficiency in mind, it bridges the gap between discovery and deployment.

## Preview
<details>
<summary>Show Preview</summary>
<br>
<img src=".preview/preview_1.png" width="500">
<br><br>
<img src=".preview/preview_2.png" width="500">
<br><br>
<img src=".preview/preview_3.png" width="500">
<br>
</details>

## Features
- Global tool discovery across curated repositories
- Instant binary installation and automated setup
- Zero-trace tool removal and uninstallation
- Automated environment integrity and path checking
- In-depth metadata and package information retrieval
- Batch package listing and repository synchronization
- High-speed reinstallation for corrupted binaries
- And more

## Disclaimer
**GitMarket** is a powerful but simple **alternative** for your terminal. <br>
Use it **only** if your primary package manager (apt, brew, pacman, etc.) does not provide the tool you need. <br>
Installing the same package via both managers can **cause path conflicts.** <br>
Use this tool to **fill the gaps**, not as a full system replacement.

## Installation
```bash
git clone https://github.com/Zeronetsec/GitMarket.git
cd GitMarket
chmod +x install.sh
./install.sh

# for backup
./install.sh --backup
```

## Usage
```bash
gitmarket --search <keyword>
gitmarket --install <tool>
gitmarket --uninstall <tool>
gitmarket --reinstall <tool>
gitmarket --check <tool>
gitmarket --info <tool>
gitmarket --list
```

## License
This project is licensed under the MIT License. <br>

<!-- Copyright (c) 2026 Zeronetsec -->