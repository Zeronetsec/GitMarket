#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/neofetch" ]]; then
    command rm -rfv "${GMOPT}/neofetch"
fi

if [[ -x "${GMBIN}/neofetch" ]]; then
    command rm -fv "${GMBIN}/neofetch"
fi

# Copyright (c) 2026 Zeronetsec