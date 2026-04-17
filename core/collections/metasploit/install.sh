#!/usr/bin/env bash
# GitMarket Project

function for_linux() {
    cd "${GMTMP}/metasploit"
    command curl \
        'https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb' \
        > msfinstall
    command chmod 755 msfinstall
    ./msfinstall
    command rm -rfv "${GMTMP}/metasploit"
    cd
}

function for_termux() {
    echo "Warning: this actions can remove and broke your rootfs data, do you want to continue?"
    read -p "y/n: " sel
    if [[ "$sel" == "n" ]]; then
        exit 1
    fi

    if ! command -v proot-distro 2>/dev/null; then
        command apt install proot-distro -y
    fi

    function install_metasploit() {
        command cat > \
            "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit/root/msfinstall.sh" \
            << 'EOF'
#!/usr/bin/env bash
command apt update -y
export DEBIAN_FRONTEND=noninteractive
command apt \
    -o Dpkg::Options::="--force-confdef" \
    -o Dpkg::Options::="--force-confold" \
    full-upgrade -y

command apt install -y \
    curl \
    gnupg

command curl -fsSL \
    "https://archive.kali.org/archive-key.asc" | \
    command gpg --dearmor -o "/etc/apt/trusted.gpg.d/kali.gpg"

echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware' \
    > "/etc/apt/sources.list"

command mkdir -pv "/etc/apt/preferences.d"
echo 'Package: *\nPin: release o=Kali\nPin-Priority: 1001' \
    > "/etc/apt/preferences.d/kali"

command apt update -y
export DEBIAN_FRONTEND=noninteractive
command apt \
    -o Dpkg::Options::="--force-confdef" \
    -o Dpkg::Options::="--force-confold" \
    full-upgrade \
    --allow-downgrades -y

command apt install metasploit-framework -y
EOF
        command chmod +x -v "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit/root/msfinstall.sh"
        command proot-distro login metasploit -- bash '/root/msfinstall.sh'
        command rm -fv "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit/root/msfinstall.sh"

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
            if [[ -x "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit/usr/bin/${x}" ]]; then
                echo '#!/usr/bin/env bash' \
                    > "${GMBIN}/${x}"
                echo -e \
                    "exec proot-distro login metasploit -- ${x} \"\${@}\"" \
                    > "${GMBIN}/${x}"
                command chmod +x -v "${GMBIN}/${x}"
            fi
        done
    }

    if [[ -d "${PREFIX}/var/lib/proot-distro/installed-rootfs/debian" ]]; then
        command proot-distro remove debian
    fi

    command proot-distro install debian

    if [[ ! -d "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit" ]]; then
        command proot-distro rename debian metasploit
        install_metasploit
    else
        command proot-distro remove metasploit
        command proot-distro rename debian metasploit
        install_metasploit
    fi
}

if [[ -d "${GMOPT}/metasploit-framework" ]]; then
    command rm -rfv "${GMOPT}/metasploit-framework"
fi

command mkdir -pv "${GMTMP}/metasploit"

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
    for_termux
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux
fi

command mkdir -pv "${GMOPT}/metasploit"
echo '#!/usr/bin/env bash' \
    > "${GMBIN}/metasploit"
echo 'echo "this is placeholder for gitmarket!"' \
    >> "${GMBIN}/metasploit"
command chmod +x -v "${GMBIN}/metasploit"

# Copyright (c) 2026 Zeronetsec