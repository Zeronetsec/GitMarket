#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/darksay" ]]; then
    command rm -rfv "${GMOPT}/darksay"
fi

if [[ -x "${GMBIN}/darksay" ]]; then
    command rm -fv "${GMBIN}/darksay"
fi

# Copyright (c) 2026 Zeronetsec