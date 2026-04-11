#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/sqlmap" ]]; then
    command rm -rfv "${GMOPT}/sqlmap"
fi

if [[ -x "${GMBIN}/sqlmap" ]]; then
    command rm -fv "${GMBIN}/sqlmap"
fi

# Copyright (c) 2026 Zeronetsec