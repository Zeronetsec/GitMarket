#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/slowhttptest" ]]; then
    command rm -rfv "${GMOPT}/slowhttptest"
fi

if [[ -x "${GMBIN}/slowhttptest" ]]; then
    command rm -fv "${GMBIN}/slowhttptest"
fi

command git clone --depth 1 \
    'https://github.com/shekyan/slowhttptest' \
    "${GMOPT}/slowhttptest"

cd "${GMOPT}/slowhttptest"
command autoreconf -i
./configure
command make
command ln -sfv \
    "${GMOPT}/slowhttptest/src/slowhttptest" \
    "${GMBIN}/slowhttptest"
cd

# Copyright (c) 2026 Zeronetsec