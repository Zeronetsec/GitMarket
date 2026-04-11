#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/hydra" ]]; then
    command rm -rfv "${GMOPT}/hydra"
fi

if [[ -x "${GMBIN}/hydra" ]]; then
    command rm -fv "${GMBIN}/hydra"
fi

# Copyright (c) 2026 Zeronetsec