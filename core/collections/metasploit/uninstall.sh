#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/metasploit-framework" ]]; then
    command rm -rfv "${GMOPT}/metasploit-framework"
fi

if [[ -d "${GMTMP}/metasploit" ]]; then
    command rm -rfv "${GMTMP}/metasploit"
fi

if [[ -x "${GMBIN}/metasploit" ]]; then
    command rm -fv "${GMBIN}/metasploit"
fi

msfbin=(
    "msf-egghunter"
    "msf-exe2vba"
    "msf-exe2vbs"
    "msf-find_badchars"
    "msf-halflm_second"
    "msf-hmac_sha1_crack"
    "msf-java_deserializer"
    "msf-jsobfu"
    "msf-makeiplist"
    "msf-md5_lookup"
    "msf-metasm_shell"
    "msf-msf_irb_shell"
    "msf-nasm_shell"
    "msf-pattern_create"
    "msf-pattern_offset"
    "msf-pdf2xdp"
    "msf-virustotal"
    "msfconsole"
    "msfd"
    "msfdb"
    "msfrpc"
    "msfrpcd"
    "msfupdate"
    "msfvenom"
)

for x in "${msfbin[@]}"; do
    if [[ -x "${GMBIN}/${x}" ]]; then
        command rm -fv "${GMBIN}/${x}"
    fi
done

if [[ "${GMENV}" == "termux" ]]; then
    command proot-distro remove metasploit 2>/dev/null || {
        if [[ -d "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit" ]]; then
            command rm -rfv "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit"
        fi
    }
fi

# Copyright (c) 2026 Zeronetsec