#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/dalfox" ]]; then
    command rm -rfv "${GMOPT}/dalfox"
fi

if [[ -x "${GMBIN}/dalfox" ]]; then
    command rm -fv "${GMBIN}/dalfox"
fi

# Copyright (c) 2026 Zeronetsec