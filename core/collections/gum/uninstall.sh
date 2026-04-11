#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/gum" ]]; then
    command rm -rfv "${GMOPT}/gum"
fi

if [[ -x "${GMBIN}/gum" ]]; then
    command rm -fv "${GMBIN}/gum"
fi

# Copyright (c) 2026 Zeronetsec