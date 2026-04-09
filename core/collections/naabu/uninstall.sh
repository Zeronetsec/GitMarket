#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/naabu" ]]; then
    command rm -rf "${GMOPT}/naabu"
fi

if [[ -x "${GMBIN}/naabu" ]]; then
    command rm -f "${GMBIN}/naabu"
fi

# Copyright (c) 2026 Zeronetsec