#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/ffuf" ]]; then
    command rm -rfv "${GMOPT}/ffuf"
fi

if [[ -x "${GMBIN}/ffuf" ]]; then
    command rm -fv "${GMBIN}/ffuf"
fi

# Copyright (c) 2026 Zeronetsec