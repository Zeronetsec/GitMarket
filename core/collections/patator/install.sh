#!/usr/bin/env bash
# GitMarket Project

function for_termux() {
    cd "${GMOPT}/patator"
    command pip install --upgrade pip setuptools wheel
    command pip install -r requirements.txt
    command chmod +x -Rv "${GMOPT}/patator"
    command ln -sfv \
        "${GMOPT}/patator/src/patator/patator.py" \
        "${GMBIN}/patator"
    cd
}

function for_linux() {
    cd "${GMOPT}/patator"
    command python3 -m venv patator_venv
    command pip install --upgrade pip setuptools wheel
    command pip install -r requirements.txt

    echo '#!/usr/bin/env bash' \
        > "${GMBIN}/patator"

    echo -e \
        "exec ${GMOPT}/patator/patator_venv/bin/python3 ${GMOPT}/patator/src/patator/patator.py  \"\${@}\"" \
        >> "${GMBIN}/patator"

    command chmod +x -v "${GMBIN}/patator"
    cd
}

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/patator" ]]; then
    command rm -rfv "${GMOPT}/patator"
fi

if [[ -x "${GMBIN}/patator" ]]; then
    command rm -fv "${GMBIN}/patator"
fi

command git clone --depth 1 \
    'https://github.com/lanjelot/patator' \
    "${GMOPT}/patator"

if [[ "${GMENV}" == "termux" ]]; then
    for_termux
elif [[ "${GMENV}" == "linux" ]]; then
    for_linux
fi

# Copyright (c) 2026 Zeronetsec