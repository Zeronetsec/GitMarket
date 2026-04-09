#!/usr/bin/env bash
# GitMarket Project

function for_termux() {
    cd "${GMOPT}/holehe" || exit 1
    command pip install --upgrade pip setuptools wheel

    if ! command python3 -c "import requests"; then
        command pip install requests
    fi

    command pip install .
    cd
}

function for_linux() {
    cd "${GMOPT}/holehe" || exit 1
    command python3 -m venv holehe_venv
    source "holehe_venv/bin/activate"
    command pip install --upgrade pip setuptools wheel

    if ! command python3 -c "import requests"; then
        command pip install requests
    fi

    command pip install .
    deactivate
    cd

    echo \
        '#!/usr/bin/env bash' \
        > "${GMBIN}/holehe"

    echo -e \
        "exec ${GMOPT}/holehe/holehe_venv/bin/python3 -m holehe \"\${@}\"" \
        >> "${GMBIN}/holehe"

    command chmod +x "${GMBIN}/holehe"
}

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/holehe" ]]; then
    command rm -rf "${GMOPT}/holehe"
fi

if [[ -x "${GMBIN}/holehe" ]]; then
    command rm -f "${GMBIN}/holehe"
fi

command git clone --depth 1 \
    'https://github.com/megadose/holehe' \
    "${GMOPT}/holehe"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux || exit 1
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux || exit 1
fi

# Copyright (c) 2026 Zeronetsec