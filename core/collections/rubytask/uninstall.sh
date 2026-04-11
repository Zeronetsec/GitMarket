#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/rubytask" ]]; then
    command rm -rfv "${GMOPT}/rubytask"
fi

if [[ -x "${GMBIN}/rubytask" ]]; then
    command rm -fv "${GMBIN}/rubytask"
fi

# Copyright (c) 2026 Zeronetsec