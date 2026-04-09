#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/zphisher" ]]; then
    command rm -rf "${GMOPT}/zphisher"
fi

if [[ -x "${GMBIN}/zphisher" ]]; then
    command rm -f "${GMBIN}/zphisher"
fi

# Copyright (c) 2026 Zeronetsec