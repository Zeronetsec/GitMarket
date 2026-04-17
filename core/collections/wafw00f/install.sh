#!/usr/bin/env bash
# GitMarket Project

pipmod=(
    "pip"
    "setuptools"
    "wheel"
)

function for_termux() {
    cd "${GMOPT}/wafw00f"
    command pip install --upgrade "${pipmod[@]}"
    command make
    cd
}

function for_linux() {
    cd "${GMOPT}/wafw00f"
    command python3 -m venv wafw00f_venv
    source "wafw00f_venv/bin/activate"
    command pip install --upgrade "${pipmod[@]}"
    command make
    deactivate
    cd

    echo \
        '#!/usr/bin/env bash' \
        > "${GMBIN}/wafw00f"

    echo -e \
        "exec ${GMOPT}/wafw00f/wafw00f_venv/bin/python3 ${GMOPT}/wafw00f/wafw00f_venv/bin/wafw00f \"\${@}\"" \
        >> "${GMBIN}/wafw00f"

    command chmod +x -v "${GMBIN}/wafw00f"
}

command git clone --depth 1 \
    'https://github.com/enablesecurity/wafw00f' \
    "${GMOPT}/wafw00f"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux
fi

# Copyright (c) 2026 Zeronetsec