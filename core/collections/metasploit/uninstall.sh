#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/metasploit-framework" ]]; then
    command rm -rfv "${GMOPT}/metasploit-framework"
fi

if [[ -d "${GMOPT}/metasploit" ]]; then
    command rm -rfv "${GMOPT}/metasploit"
fi

if [[ -d "${GMTMP}/metasploit" ]]; then
    command rm -rfv "${GMTMP}/metasploit"
fi

if [[ -x "${GMBIN}/msfconsole" ]]; then
    command rm -fv "${GMBIN}/msfconsole"
fi

if [[ -x "${GMBIN}/msfvenom" ]]; then
    command rm -fv "${GMBIN}/msfvenom"
fi

if [[ "${GMENV}" == "termux" ]]; then
    command proot-distro remove metasploit 2>/dev/null || {
        if [[ -d "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit" ]]; then
            command rm -rfv "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit"
        fi
    }
fi

# Copyright (c) 2026 Zeronetsec