// GitMarket Project

package main

import (
    "fmt"
    "os"
    "time"
    "gitmarket/utils"
    "gitmarket/core"
    "gitmarket/utils/color"
)

func main() {
    if len(os.Args) < 2 {
        fmt.Printf(
            "%s[!] %sInvalid input!\n",
            color.R, color.N,
        )

        fmt.Printf(
            "%s[!] %sTry: %sgitmarket --help%s\n",
            color.R, color.N, color.GG, color.N,
        )
        return
    }

    command := os.Args[1]

    if command == "--help" {
        core.Help()
        return
    } else if command == "--version" {
        core.Version()
        return
    } else if command == "--uwu" {
        utils.Nyan(5 * time.Second)
        return
    } else if command == "--list" {
        core.List()
        return
    }

    if len(os.Args) < 3 {
        fmt.Printf(
            "%s[!] %sNot input anything!\n",
            color.R, color.N,
        )
        return
    }

    query := os.Args[2]

    switch command {
        case "--search":
            core.Search(query)
        case "--install":
            core.Install(query)
        case "--uninstall":
            core.Uninstall(query)
        case "--check":
            core.Check(query)
        case "--reinstall":
            core.Reinstall(query)
        case "--info":
            core.Info(query)
        default:
            fmt.Printf(
                "%s[!] %sUnknown command: %s%s%s\n",
                color.R, color.N, color.GG, command, color.N,
            )
            return
    }
}

// Copyright (c) 2026 Zeronetsec