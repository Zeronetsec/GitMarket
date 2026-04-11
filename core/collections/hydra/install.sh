#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/hydra" ]]; then
    command rm -rfv "${GMOPT}/hydra"
fi

if [[ -x "${GMBIN}/hydra" ]]; then
    command rm -fv "${GMBIN}/hydra"
fi

command git clone --depth 1 \
    'https://github.com/vanhauser-thc/thc-hydra' \
    "${GMOPT}/hydra"

cd "${GMOPT}/hydra"
./configure
command make
command ln -sfv "${GMOPT}/hydra/hydra" \
    "${GMBIN}/hydra"
cd

# Copyright (c) 2026 Zeronetsec