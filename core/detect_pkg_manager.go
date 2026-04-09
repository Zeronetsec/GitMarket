// GitMarket Project

package core

import (
    "os/exec"
)

func detectPkgManager() string {
    if _, err := exec.LookPath("apt"); err == nil {
        return "apt"
    }

    if _, err := exec.LookPath("apk"); err == nil {
        return "apk"
    }

    if _, err := exec.LookPath("dnf"); err == nil {
        return "dnf"
    }

    if _, err := exec.LookPath("pacman"); err == nil {
        return "pacman"
    }

    if _, err := exec.LookPath("yum"); err == nil {
        return "yum"
    }

    return ""
}

// Copyright (c) 2026 Zeronetsec