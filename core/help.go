// GitMarket Project

package core

import (
    "fmt"
    "gitmarket/utils"
    "gitmarket/utils/color"
)

func Help() {
    name := "gitmarket"

    utils.BirthDay()
    fmt.Printf(
        "%sGitMarket %s- %sThe digital marketplace for your terminal.%s\n",
        color.N, color.DG, color.YY, color.N,
    )

    fmt.Println()
    fmt.Printf(
        "%sUsage: %s%s %s<command> [<argument>]%s\n",
        color.N, color.GG, name, color.BB, color.N,
    )

    fmt.Println()
    fmt.Printf(
        "%sAvailable commands:\n",
        color.N,
    )

    fmt.Printf(
        "    %s--search %s<keyword> %s- %ssearch for specific tool%s\n",
        color.GG, color.BB, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--install %s<tool> %s- %sinstall a new tool%s\n",
        color.GG, color.BB, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--uninstall %s<tool> %s- %sremove an installed tool%s\n",
        color.GG, color.BB, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--reinstall %s<tool> %s- %sreinstall a tool%s\n",
        color.GG, color.BB, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--check %s<tool> %s- %scheck installed tool path%s\n",
        color.GG, color.BB, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--info %s<tool> %s- %sdisplay detailed information about a tool%s\n",
        color.GG, color.BB, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--list %s- %slist all available tools%s\n",
        color.GG, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--help %s- %sshow this help message%s\n",
        color.GG, color.DG, color.WW, color.N,
    )

    fmt.Printf(
        "    %s--version %s- %sdisplay version information%s\n",
        color.GG, color.DG, color.WW, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec