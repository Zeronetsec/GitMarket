#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/nikto" ]]; then
    command rm -rfv "${GMOPT}/nikto"
fi

if [[ -x "${GMBIN}/nikto" ]]; then
    command rm -fv "${GMBIN}/nikto"
fi

# Copyright (c) 2026 Zeronetsec