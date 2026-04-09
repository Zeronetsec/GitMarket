#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/sqlmap" ]]; then
    command rm -rf "${GMOPT}/sqlmap"
fi

if [[ -x "${GMBIN}/sqlmap" ]]; then
    command rm -f "${GMBIN}/sqlmap"
fi

# Copyright (c) 2026 Zeronetsec