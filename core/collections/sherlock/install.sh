#!/usr/bin/env bash
# GitMarket Project

pipmod=(
    "pip"
    "setuptools"
    "wheel"
    "requests"
)

function for_termux() {
    cd "${GMOPT}/sherlock"
    command pip install --upgrade "${pipmod[@]}"
    command pip install .
    cd
}

function for_linux() {
    cd "${GMOPT}/sherlock"
    command python3 -m venv sherlock_venv
    source 'sherlock_venv/bin/activate'
    command pip install --upgrade "${pipmod[@]}"
    command pip install .
    deactivate
    cd

    echo "#!/usr/bin/env bash" \
        > "${GMBIN}/sherlock"

    echo -e \
        "exec ${GMOPT}/sherlock/sherlock_venv/bin/python3 ${GMOPT}/sherlock/sherlock_venv/bin/sherlock" \
        >> "${GMBIN}/sherlock"

    command chmod +x -v "${GMBIN}/sherlock"
}

command git clone --depth 1 \
    'https://github.com/sherlock-project/sherlock' \
    "${GMOPT}/sherlock"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux
fi

# Copyright (c) 2026 Zeronetsec