// GitMarket Project

package core

import (
    "fmt"
    "os/exec"
    "path/filepath"
    "gitmarket/utils/color"
)

func Check(name string) {
    if name == "" {
        fmt.Printf(
            "%s[!] %sInvalid tool name!\n",
            color.R, color.N,
        )
        return
    }

    root := GMRoot()
    optPath := filepath.Join(root, "opt", name)
    binPath := filepath.Join(root, "bin", name)

    if !fileExists(optPath) && !fileExists(binPath) {
        fmt.Printf(
            "%s[!] %sTool: %s%s %snot installed!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    var whichPath string
    if p, err := exec.LookPath(name); err == nil {
        whichPath = p
    }

    fmt.Printf(
        "%sTool: %s%s%s\n",
        color.N, color.GG, name, color.N,
    )

    if fileExists(optPath) {
        fmt.Printf(
            "%sSource: %s%s%s\n",
            color.N, color.GG, optPath, color.N,
        )
    }

    if fileExists(binPath) {
        fmt.Printf(
            "%sBinary: %s%s%s\n",
            color.N, color.GG, binPath, color.N,
        )
    } else if whichPath != "" {
        fmt.Printf(
            "%sBinary: %s%s%s\n",
            color.N, color.GG, whichPath, color.N,
        )
    }
}

// Copyright (c) 2026 Zeronetsec