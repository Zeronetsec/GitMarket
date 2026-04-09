#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/nuclei" ]]; then
    command rm -rf "${GMOPT}/nuclei"
fi

if [[ -x "${GMBIN}/nuclei" ]]; then
    command rm -f "${GMBIN}/nuclei"
fi

# Copyright (c) 2026 Zeronetsec