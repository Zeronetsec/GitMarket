#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/neofetch" ]]; then
    command rm -rf "${GMOPT}/neofetch"
fi

if [[ -x "${GMBIN}/neofetch" ]]; then
    command rm -f "${GMBIN}/neofetch"
fi

# Copyright (c) 2026 Zeronetsec