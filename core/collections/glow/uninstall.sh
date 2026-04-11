#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/glow" ]]; then
    command rm -rfv "${GMOPT}/glow"
fi

if [[ -x "${GMBIN}/glow" ]]; then
    command rm -fv "${GMBIN}/glow"
fi

# Copyright (c) 2026 Zeronetsec