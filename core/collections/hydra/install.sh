#!/usr/bin/env bash
# GitMarket Project

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