// GitMarket Project

package utils

type Package struct {
    Name string `json:"Name"`
    Homepage string `json:"Homepage"`
    Mirror string `json:"Mirror"`
    Description string `json:"Description"`
    Dependency []string `json:"Dependency"`
    Install []string `json:"Install"`
    Uninstall []string `json:"Uninstall"`
}

// Copyright (c) 2026 Zeronetsec