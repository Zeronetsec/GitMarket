#!/usr/bin/env bash
# GitMarket Project

function for_termux() {
    cd "${GMOPT}/holehe"
    command pip install --upgrade pip setuptools wheel
    command pip install requests
    command pip install .
    cd
}

function for_linux() {
    cd "${GMOPT}/holehe"
    command python3 -m venv holehe_venv
    source "holehe_venv/bin/activate"
    command pip install --upgrade pip setuptools wheel
    command pip install requests
    command pip install .
    deactivate
    cd

    echo \
        '#!/usr/bin/env bash' \
        > "${GMBIN}/holehe"

    echo -e \
        "exec ${GMOPT}/holehe/holehe_venv/bin/python3 ${GMOPT}/holehe/holehe_venv/bin/holehe \"\${@}\"" \
        >> "${GMBIN}/holehe"

    command chmod +x -v "${GMBIN}/holehe"
}

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/holehe" ]]; then
    command rm -rfv "${GMOPT}/holehe"
fi

if [[ -x "${GMBIN}/holehe" ]]; then
    command rm -fv "${GMBIN}/holehe"
fi

command git clone --depth 1 \
    'https://github.com/megadose/holehe' \
    "${GMOPT}/holehe"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux
fi

# Copyright (c) 2026 Zeronetsec