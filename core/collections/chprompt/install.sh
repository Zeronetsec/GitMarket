#!/usr/bin/env bash
# GitMarket Project

echo "Warning: this actions may broke your ~/.bashrc"
read -p "y/n: " confirm
if [[ "${confirm}" == "n" ]]; then
    exit 1
fi

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -pv "${GMTMP}"
fi

if [[ -d "${GMOPT}/chprompt" ]]; then
    command rm -rfv "${GMOPT}/chprompt"
fi

if [[ ! -f "${HOME}/.bashrc" ]]; then
    command touch "${HOME}/.bashrc"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Chprompt' \
    "${GMOPT}/chprompt"

command chmod +x -Rv "${GMOPT}/chprompt"
command cat "${HOME}/.bashrc" | \
    command grep -Ev "source .*/chprompt/chprompt.sh|chprompt --use .*" \
    > "${GMTMP}/.bashrc.tmp" || true

current_theme="$(
    command grep "chprompt --use" "${HOME}/.bashrc" | \
    command head -n 1 | \
    command sed 's/.*chprompt --use //'
)"

if [[ -z "${current_theme}" ]]; then
    current_theme="default/default"
fi

{
    echo -e "source ${GMOPT}/chprompt/chprompt.sh"
    echo -e "chprompt --use ${current_theme}"
} >> "${GMTMP}/.bashrc.tmp"

command mv -v \
    "${GMTMP}/.bashrc.tmp" \
    "${HOME}/.bashrc"

echo "type: 'source ~/.bashrc' to load chprompt"

# Copyright (c) 2026 Zeronetsec