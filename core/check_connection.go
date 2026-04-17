// GitMarket Project

package core

import (
    "time"
    "net/http"
)

func CheckConnection() bool {
    client := http.Client{
        Timeout: 3 * time.Second,
    }

    _, err := client.Get("https://google.com")
    return err == nil
}

// Copyright (c) 2026 Zeronetsec