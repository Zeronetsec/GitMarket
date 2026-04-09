// GitMarket Project

package core

import (
    "fmt"
    "gitmarket/utils/color"
)

func Reinstall(name string) {
    if name == "" {
        fmt.Printf(
            "%s[!] %sInvalid tool name!\n",
            color.R, color.N,
        )
        return
    }

    if !IsValidPackage(name) {
        fmt.Printf(
            "%s[!] %sTool: %s%s %snot found!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    if !IsInstalled(name) {
        fmt.Printf(
            "%s[!] %sTool: %s%s %sis not installed!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    fmt.Printf(
        "%s[*] %sReinstalling: %s%s%s\n",
        color.B, color.N, color.GG, name, color.N,
    )

    Uninstall(name)
    Install(name)

    fmt.Printf(
        "%s[+] %sSuccessfully reinstalled: %s%s%s\n",
        color.GG, color.N, color.GG, name, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec