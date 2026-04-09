#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/dalfox" ]]; then
    command rm -rf "${GMOPT}/dalfox"
fi

if [[ -x "${GMBIN}/dalfox" ]]; then
    command rm -f "${GMBIN}/dalfox"
fi

# Copyright (c) 2026 Zeronetsec