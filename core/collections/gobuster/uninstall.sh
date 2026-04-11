#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/gobuster" ]]; then
    command rm -rfv "${GMOPT}/gobuster"
fi

if [[ -x "${GMBIN}/gobuster" ]]; then
    command rm -fv "${GMBIN}/gobuster"
fi

# Copyright (c) 2026 Zeronetsec