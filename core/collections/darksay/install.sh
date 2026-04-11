#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/darksay" ]]; then
    command rm -rfv "${GMOPT}/darksay"
fi

if [[ -x "${GMBIN}/darksay" ]]; then
    command rm -fv "${GMBIN}/darksay"
fi

command git clone --depth 1 \
    'https://github.com/Blziko/darksay' \
    "${GMOPT}/darksay"

command chmod +x -Rv "${GMOPT}/darksay"
command ln -sfv \
    "${GMOPT}/darksay/darksay.rb" \
    "${GMBIN}/darksay"

# Copyright (c) 2026 Zeronetsec