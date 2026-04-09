#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/hydra" ]]; then
    command rm -rf "${GMOPT}/hydra"
fi

if [[ -x "${GMBIN}/hydra" ]]; then
    command rm -f "${GMBIN}/hydra"
fi

command git clone --depth 1 \
    'https://github.com/vanhauser-thc/thc-hydra' \
    "${GMOPT}/hydra"

cd "${GMOPT}/hydra" || exit 1
./configure
command make
command ln -sf "${GMOPT}/hydra/hydra" \
    "${GMBIN}/hydra"
cd

# Copyright (c) 2026 Zeronetsec