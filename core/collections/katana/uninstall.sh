#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/katana" ]]; then
    command rm -rf "${GMOPT}/katana"
fi

if [[ -x "${GMBIN}/katana" ]]; then
    command rm -f "${GMBIN}/katana"
fi

# Copyright (c) 2026 Zeronetsec