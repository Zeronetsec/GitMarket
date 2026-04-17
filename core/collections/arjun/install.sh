#!/usr/bin/env bash
# GitMarket Project

pipmod=(
    "pip"
    "setuptools"
    "wheel"
    "requests"
    "dicttoxml"
)

function for_termux() {
    cd "${GMOPT}/arjun"
    command pip install --upgrade "${pipmod[@]}"
    command python3 setup.py install
    cd
}

function for_linux() {
    cd "${GMOPT}/arjun"
    command python3 -m venv arjun_venv
    source 'arjun_venv/bin/activate'
    command pip install --upgrade "${pipmod[@]}"
    command python3 setup.py install
    deactivate
    cd

    echo '#!/usr/bin/env bash' \
        > "${GMBIN}/arjun"

    echo -e \
        "exec ${GMOPT}/arjun/arjun_venv/bin/python3 ${GMOPT}/arjun/arjun_venv/bin/arjun" \
        >> "${GMBIN}/arjun"

    command chmod +x -v "${GMBIN}/arjun"
}

command git clone --depth 1 \
    'https://github.com/s0md3v/Arjun' \
    "${GMOPT}/arjun"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux
fi

# Copyright (c) 2026 Zeronetsec