#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/metasploit-framework" ]]; then
    command rm -rf "${GMOPT}/metasploit-framework"
fi

if [[ -d "${GMOPT}/metasploit" ]]; then
    command rm -rf "${GMOPT}/metasploit"
fi

if [[ -d "${GMTMP}/metasploit" ]]; then
    command rm -rf "${GMTMP}/metasploit"
fi

if [[ -x "${GMBIN}/msfconsole" ]]; then
    command rm -f "${GMBIN}/msfconsole"
fi

if [[ -x "${GMBIN}/msfvenom" ]]; then
    command rm -f "${GMBIN}/msfvenom"
fi

if [[ "${GMENV}" == "termux" ]]; then
    command proot-distro remove metasploit 2>/dev/null | \
        if [[ -d "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit" ]]; then
            command rm -rf "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit"
        fi
fi

# Copyright (c) 2026 Zeronetsec