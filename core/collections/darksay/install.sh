#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/darksay" ]]; then
    command rm -rf "${GMOPT}/darksay"
fi

if [[ -x "${GMBIN}/darksay" ]]; then
    command rm -f "${GMBIN}/darksay"
fi

command git clone --depth 1 \
    'https://github.com/Blziko/darksay' \
    "${GMOPT}/darksay"

command chmod +x -R "${GMOPT}/darksay"
command ln -sf \
    "${GMOPT}/darksay/darksay.rb" \
    "${GMBIN}/darksay"

# Copyright (c) 2026 Zeronetsec