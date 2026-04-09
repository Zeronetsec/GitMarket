#!/usr/bin/env bash
# GitMarket Project

function for_linux() {
    cd "${GMTMP}/metasploit"
    command curl \
        'https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb' \
        > msfinstall
    command chmod 755 msfinstall
    ./msfinstall
    command rm -rf "${GMTMP}/metasploit"
    cd
}

function for_termux() {
    echo "WARNING!!!"
    echo "this actions can remove and broke your rootfs data, do you want to continue?"
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
        command chmod +x "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit/root/msfinstall.sh"
        command proot-distro login metasploit -- bash '/root/msfinstall.sh'
        command rm -f "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit/root/msfinstall.sh"

        command cat > \
            "${GMBIN}/msfconsole" \
        << 'EOF'
#!/usr/bin/env bash
exec proot-distro login metasploit -- msfconsole "${@}"
EOF
        command chmod +x "${GMBIN}/msfconsole"

        command cat > \
            "${GMBIN}/msfvenom" \
            << 'EOF'
#!/usr/bin/env bash
exec proot-distro login metasploit -- msfvenom "${@}"
EOF
        command chmod +x "${GMBIN}/msfvenom"
    }

    if [[ -d "${PREFIX}/var/lib/proot-distro/installed-rootfs/debian" ]]; then
        command proot-distro remove debian
    fi

    command proot-distro install debian

    if [[ ! -d "${PREFIX}/var/lib/proot-distro/installed-rootfs/metasploit" ]]; then
        command proot-distro renmae debian metasploit
        install_metasploit
    else
        command proot-distro remove metasploit
        command proot-distro rename debian metasploit
        install_metasploit
    fi
}

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/metasploit-framework" ]]; then
    command rm -rf "${GMOPT}/metasploit-framework"
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

command mkdir -p "${GMTMP}/metasploit"

if [[ -d "${GMOPT}/metasploit" ]]; then
    command rm -rf "${GMOPT}/metasploit"
fi

command mkdir -p "${GMOPT}/metasploit"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux || exit 1
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux || exit 1
fi

# Copyright (c) 2026 Zeronetsec