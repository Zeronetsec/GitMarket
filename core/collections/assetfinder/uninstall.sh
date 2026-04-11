#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/assetfinder" ]]; then
    command rm -rfv "${GMOPT}/assetfinder"
fi

if [[ -x "${GMBIN}/assetfinder" ]]; then
    command rm -fv "${GMBIN}/assetfinder"
fi

# Copyright (c) 2026 Zeronetsec