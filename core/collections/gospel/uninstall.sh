#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/gospel" ]]; then
    command rm -rfv "${GMOPT}/gospel"
fi

if [[ -x "${GMBIN}/gospel" ]]; then
    command rm -fv "${GMBIN}/gospel"
fi

# Copyright (c) 2026 Zeronetsec