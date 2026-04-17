#!/usr/bin/env bash
# GitMarket Project

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