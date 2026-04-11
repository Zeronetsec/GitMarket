#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/httpx" ]]; then
    command rm -rfv "${GMOPT}/httpx"
fi

if [[ -x "${GMBIN}/httpx" ]]; then
    command rm -fv "${GMBIN}/httpx"
fi

# Copyright (c) 2026 Zeronetsec