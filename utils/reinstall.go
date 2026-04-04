// GitMarket Project

package utils

import (
    "fmt"
    "gitmarket/color"
)

func Reinstall(name string) {
    pkg := GetPackage(name)
    if pkg == nil {
        fmt.Printf(
            "%s[!] %sPackage: %s%s %snot found!",
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
}

// Copyright (c) 2026 Zeronetsec