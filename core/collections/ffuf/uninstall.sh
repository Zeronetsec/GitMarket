#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/ffuf" ]]; then
    command rm -rf "${GMOPT}/ffuf"
fi

if [[ -x "${GMBIN}/ffuf" ]]; then
    command rm -f "${GMBIN}/ffuf"
fi

# Copyright (c) 2026 Zeronetsec