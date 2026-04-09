#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/gospel" ]]; then
    command rm -rf "${GMOPT}/gospel"
fi

if [[ -x "${GMBIN}/gospel" ]]; then
    command rm -f "${GMBIN}/gospel"
fi

# Copyright (c) 2026 Zeronetsec