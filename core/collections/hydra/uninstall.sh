#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/hydra" ]]; then
    command rm -rf "${GMOPT}/hydra"
fi

if [[ -x "${GMBIN}/hydra" ]]; then
    command rm -f "${GMBIN}/hydra"
fi

# Copyright (c) 2026 Zeronetsec