#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/zphisher" ]]; then
    command rm -rfv "${GMOPT}/zphisher"
fi

if [[ -x "${GMBIN}/zphisher" ]]; then
    command rm -fv "${GMBIN}/zphisher"
fi

# Copyright (c) 2026 Zeronetsec