#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/nuclei" ]]; then
    command rm -rfv "${GMOPT}/nuclei"
fi

if [[ -x "${GMBIN}/nuclei" ]]; then
    command rm -fv "${GMBIN}/nuclei"
fi

# Copyright (c) 2026 Zeronetsec