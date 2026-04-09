#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/subfinder" ]]; then
    command rm -rf "${GMOPT}/subfinder"
fi

if [[ -x "${GMBIN}/subfinder" ]]; then
    command rm -f "${GMBIN}/subfinder"
fi

# Copyright (c) 2026 Zeronetsec