#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/katana" ]]; then
    command rm -rfv "${GMOPT}/katana"
fi

if [[ -x "${GMBIN}/katana" ]]; then
    command rm -fv "${GMBIN}/katana"
fi

# Copyright (c) 2026 Zeronetsec