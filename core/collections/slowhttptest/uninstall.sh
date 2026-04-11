#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/slowhttptest" ]]; then
    command rm -rfv "${GMOPT}/slowhttptest"
fi

if [[ -x "${GMBIN}/slowhttptest" ]]; then
    command rm -fv "${GMBIN}/slowhttptest"
fi

# Copyright (c) 2026 Zeronetsec