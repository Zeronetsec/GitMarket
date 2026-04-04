// GitMarket Project

package utils

import (
    "fmt"
    "gitmarket/color"
)

const (
    tool = "GitMarket"
    version = "v1.0"
    creator = "Zeronetsec"
    homepage = "https://github.com/Zeronetsec/GitMarket"
)

func Version() {
    fmt.Printf(
        "%sProject: %s%s%s\n",
        color.N, color.GG, tool, color.N,
    )

    fmt.Printf(
        "%sVersion: %s%s%s\n",
        color.N, color.GG, version, color.N,
    )

    fmt.Printf(
        "%sCreator: %s%s%s\n",
        color.N, color.GG, creator, color.N,
    )

    fmt.Printf(
        "%sHomepage: %s%s%s\n",
        color.N, color.GG, homepage, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec