#!/usr/bin/env bash
# GitMarket Project

pipmod=(
    "pip"
    "setuptools"
    "wheel"
)

function for_termux() {
    cd "${GMOPT}/paramspider"
    command pip install --upgrade "${pipmod[@]}"
    command pip install .
    cd
}

function for_linux() {
    cd "${GMOPT}/paramspider"
    command python3 -m venv paramspider_venv
    source "paramspider_venv/bin/activate"
    command pip install --upgrade "${pipmod[@]}"
    command pip install .
    deactivate
    cd

    echo \
        '#!/usr/bin/env bash' \
        > "${GMBIN}/paramspider"

    echo -e \
        "exec ${GMOPT}/paramspider/paramspider_venv/bin/python3 ${GMOPT}/paramspider/paramspider_venv/bin/paramspider \"\${@}\"" \
        >> "${GMBIN}/paramspider"

    command chmod +x -v "${GMBIN}/paramspider"
}

command git clone --depth 1 \
    'https://github.com/devanshbatham/ParamSpider' \
    "${GMOPT}/paramspider"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux
fi

# Copyright (c) 2026 Zeronetsec