<!-- GitMarket Project -->

[![version](https://img.shields.io/badge/GitMarket-Version%201.0-blue.svg?maxAge=259200)]()
[![gover](https://img.shields.io/badge/Go-Version%201.26.1-blue.svg)]()
[![os](https://img.shields.io/badge/Supported%20OS-Linux-blue.svg)]()
[![license](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

# GitMarket
GitMarket is a simple tool to install CLI tools from various repositories. <br>
Built to avoid doing the same setup steps over and over again.

## Collections
<details>
<summary>Show collections</summary>

- [amass](https://github.com/owasp-amass/amass)
- [apktool](https://github.com/iBotPeaches/Apktool)
- [arjun](https://github.com/s0md3v/Arjun)
- [assetfinder](https://github.com/tomnomnom/assetfinder)
- [chprompt](https://github.com/Zeronetsec/Chprompt)
- [comet](https://github.com/Zeronetsec/Comet)
- [commix](https://github.com/commixproject/commix)
- [dalfox](https://github.com/hahwul/dalfox)
- [ffuf](https://github.com/ffuf/ffuf)
- [gitmarket](https://github.com/Zeronetsec/GitMarket)
- [glow](https://github.com/charmbracelet/glow)
- [gobuster](https://github.com/Oj/gobuster)
- [gospel](https://github.com/Zeronetsec/Gospel)
- [gum](https://github.com/charmbracelet/gum)
- [holehe](https://github.com/megadose/holehe)
- [httpx](https://github.com/projectdiscovery/httpx)
- [hydra](https://github.com/vanhauser-thc/thc-hydra)
- [katana](https://github.com/projectdiscovery/katana)
- [metasploit](https://github.com/rapid7/metasploit-framework)
- [muxly](https://github.com/Zeronetsec/Muxly)
- [naabu](https://github.com/projectdiscovery/naabu)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [nikto](https://github.com/sullo/nikto)
- [nuclei](https://github.com/projectdiscovery/nuclei)
- [paramspider](https://github.com/devanshbatham/ParamSpider)
- [patator](https://github.com/lanjelot/patator)
- [rclone](https://github.com/rclone/rclone)
- [rubytask](https://github.com/Zeronetsec/Rubytask)
- [sherlock](https://github.com/sherlock-project/sherlock)
- [slowhttptest](https://github.com/shekyan/slowhttptest)
- [sqlmap](https://github.com/sqlmapproject/sqlmap)
- [subfinder](https://github.com/projectdiscovery/subfinder)
- [wafw00f](https://github.com/enablesecurity/wafw00f)
- [whatweb](https://github.com/urbanadventurer/WhatWeb)
- [zphisher](https://github.com/htr-tech/zphisher)

</details>

## Features
- Install and uninstall tools automatically
- Search tools by keyword
- Check installed tool path and info
- List available tools

## Disclaimer
Please read the
[DISCLAIMER.md](https://github.com/Zeronetsec/GitMarket/blob/main/DISCLAIMER.md)
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

## License
This project is licensed under the MIT License. <br>

<!-- Copyright (c) 2026 Zeronetsec -->