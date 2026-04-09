#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/holehe" ]]; then
    command rm -rf "${GMOPT}/holehe"
fi

if [[ -x "${GMBIN}/holehe" ]]; then
    command rm -f "${GMBIN}/holehe"
fi

# Copyright (c) 2026 Zeronetsec