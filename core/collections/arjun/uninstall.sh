#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/arjun" ]]; then
    command rm -rfv "${GMOPT}/arjun"
fi

if [[ -x "${GMBIN}/arjun" ]]; then
    command rm -fv "${GMBIN}/arjun"
fi

# Copyright (c) 2026 Zeronetsec