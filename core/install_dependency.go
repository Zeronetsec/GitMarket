// GitMarket Project

package core

import (
    "fmt"
    "strings"
    "gitmarket/utils/color"
)

func installDependency(pkgManager string, dep string) error {
    parts := strings.Split(dep, "::")

    for _, pkg := range parts {
        fmt.Printf(
            "%s[*] %sTrying dependency: %s%s%s\n",
            color.B, color.N, color.GG, pkg, color.N,
        )

        err := runInstall(pkgManager, pkg)
        if err == nil {
            fmt.Printf(
                "%s[+] %sInstalled dependency: %s%s%s\n",
                color.GG, color.N, color.GG, pkg, color.N,
            )
            return nil
        }
        fmt.Printf(
            "%s[!] %sFailed: %s%s%s\n",
            color.R, color.N, color.GG, pkg, color.N,
        )
    }

    return fmt.Errorf(
        "All fallback packages failed: %s%s%s",
        color.GG, dep, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec