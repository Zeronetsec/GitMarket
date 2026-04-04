// GitMarket Project

package utils

import (
    "fmt"
    "os"
    "os/exec"
    "path/filepath"
    "gitmarket/color"
)

func Check(name string) {
    fmt.Printf(
        "%s[*] %sChecking: %s%s%s\n",
        color.B, color.N, color.GG, name, color.N,
    )

    entry, err := exec.LookPath(name)
    installed := false

    if err == nil {
        installed = true
        fmt.Printf(
            "%s[*] %sFound binary: %s%s%s\n",
            color.B, color.N, color.GG, entry, color.N,
        )
    }

    prefix := os.Getenv("PREFIX")
    home := os.Getenv("HOME")

    if prefix == "" {
        prefix = "/"
    }

    lpath := []string{
        filepath.Join(prefix, "opt", name),
        filepath.Join(prefix, "tmp", name),
        filepath.Join(prefix, "local", name),
        filepath.Join(home, "go", "src", name),
    }

    foundSource := ""

    for _, path := range lpath {
        if _, err := os.Stat(path); err == nil {
            foundSource = path
            break
        }
    }

    if foundSource != "" {
        installed = true
        fmt.Printf(
            "%s[*] %sFound source: %s%s%s\n",
            color.B, color.N, color.GG, foundSource, color.N,
        )
    }

    if installed {
        fmt.Printf(
            "%s[+] %sPackage installed\n",
            color.GG, color.N,
        )
        return
    }

    fmt.Printf(
        "%s[!] %sPackage not installed!\n",
        color.R, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec