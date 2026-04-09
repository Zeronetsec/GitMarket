#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/gobuster" ]]; then
    command rm -rf "${GMOPT}/gobuster"
fi

if [[ -x "${GMBIN}/gobuster" ]]; then
    command rm -f "${GMBIN}/gobuster"
fi

# Copyright (c) 2026 Zeronetsec