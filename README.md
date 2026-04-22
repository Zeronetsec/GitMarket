<!-- GitMarket Project -->

[![version](https://img.shields.io/badge/GitMarket-Version%201.0-blue.svg?maxAge=259200)]()
[![gover](https://img.shields.io/badge/Go-Version%201.26.1-blue.svg)]()
[![os](https://img.shields.io/badge/Supported%20OS-Linux-blue.svg)]()
[![license](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

# GitMarket
GitMarket is a simple tool to install CLI tools from various repositories. <br>
Built to avoid doing the same setup steps over and over again.

## Features
- Install and uninstall tools automatically
- Search tools by keyword
- Check installed tool path and info
- List available tools

## Disclaimer
Please read the
[DISCLAIMER](https://github.com/Zeronetsec/GitMarket/blob/main/DISCLAIMER.md)
before use. <br>
Use at your own risk. <br>
This tool uses Bash scripts to interact with your system.

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
And more commands.

## License
This project is licensed under the MIT License. <br>

<!-- Copyright (c) 2026 Zeronetsec -->