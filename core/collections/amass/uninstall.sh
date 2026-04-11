#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/amass" ]]; then
    command rm -rfv "${GMOPT}/amass"
fi

if [[ -x "${GMBIN}/amass" ]]; then
    command rm -fv "${GMBIN}/amass"
fi

# Copyright (c) 2026 Zeronetsec