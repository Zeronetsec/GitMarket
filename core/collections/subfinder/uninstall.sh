#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/subfinder" ]]; then
    command rm -rfv "${GMOPT}/subfinder"
fi

if [[ -x "${GMBIN}/subfinder" ]]; then
    command rm -fv "${GMBIN}/subfinder"
fi

# Copyright (c) 2026 Zeronetsec