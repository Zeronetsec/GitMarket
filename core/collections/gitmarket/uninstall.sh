#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/gitmarket" ]]; then
    command rm -rf "${GMOPT}/gitmarket"
fi

if [[ -x "${GMBIN}/gitmarket" ]]; then
    command rm -f "${GMBIN}/gitmarket"
fi

# Copyright (c) 2026 Zeronetsec