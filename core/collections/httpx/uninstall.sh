#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/httpx" ]]; then
    command rm -rf "${GMOPT}/httpx"
fi

if [[ -x "${GMBIN}/httpx" ]]; then
    command rm -f "${GMBIN}/httpx"
fi

# Copyright (c) 2026 Zeronetsec