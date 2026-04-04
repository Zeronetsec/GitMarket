// GitMarket Project

package utils

import (
    "os/exec"
)

var Managers = []string{
    "apt",
    "apk",
    "dnf",
    "yum",
    "pacman",
}

func Detector() string {
    for _, mgr := range Managers {
        _, err := exec.LookPath(mgr)
        if err == nil {
            return mgr
        }
    }
    return ""
}

// Copyright (c) 2026 Zeronetsec