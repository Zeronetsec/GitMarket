// GitMarket Project

package core

import (
    "os"
    "path/filepath"
)

func SetupEnv(name string) {
	root := GMRoot()

    os.Setenv(
        "GMBIN", filepath.Join(root, "bin"),
    )

    os.Setenv(
        "GMOPT", filepath.Join(root, "opt"),
    )

    os.Setenv(
        "GMTMP", filepath.Join(root, "tmp"),
    )

    if isTermux() {
        os.Setenv("GMENV", "termux")
    } else {
        os.Setenv("GMENV", "linux")
    }
}

// Copyright (c) 2026 Zeronetsec