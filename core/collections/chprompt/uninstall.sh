#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/chprompt" ]]; then
    command rm -rfv "${GMOPT}/chprompt"
fi

if [[ ! -d "${GMTMP}" ]]; then
	command mkdir -pv "${GMTMP}"
fi

command cat "${HOME}/.bashrc" | \
    command grep -v 'chprompt' > "${GMTMP}/bashrc_tmp"
command cat "${GMTMP}/bashrc_tmp" > "${HOME}/.bashrc"

# Copyright (c) 2026 Zeronetsec