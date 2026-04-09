#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/darksay" ]]; then
    command rm -rf "${GMOPT}/darksay"
fi

if [[ -x "${GMBIN}/darksay" ]]; then
    command rm -f "${GMBIN}/darksay"
fi

# Copyright (c) 2026 Zeronetsec