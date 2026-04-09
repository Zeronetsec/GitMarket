#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMTMP}" ]]; then
    command mkdir -p "${GMTMP}"
fi

if [[ -d "${GMTMP}/rubytask" ]]; then
    command rm -rf "${GMTMP}/rubytask"
fi

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/rubytask" ]]; then
    command rm -rf "${GMOPT}/rubytask"
fi

if [[ -x "${GMBIN}/rubytask" ]]; then
    command rm -f "${GMBIN}/rubytask"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Rubytask' \
    "${GMTMP}/rubytask"

cd "${GMTMP}/rubytask" || exit 1
command chmod +x "install.sh"
command bash "install.sh"
cd

# Copyright (c) 2026 Zeronetsec