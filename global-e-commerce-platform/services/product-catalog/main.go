package main

import (
    "encoding/json"
    "net/http"
)

type Product struct {
    ID          string  `json:"id"`
    Name        string  `json:"name"`
    Price       float64 `json:"price"`
    Description string  `json:"description"`
}

func main() {
    http.HandleFunc("/api/products", func(w http.ResponseWriter, r *http.Request) {
        products := []Product{
            {ID: "1", Name: "Cloud Boots", Price: 79.99, Description: "Walk on air with our Cloud Boots."},
            {ID: "2", Name: "Sky Glasses", Price: 45.99, Description: "See the world in a new light."},
        }
        json.NewEncoder(w).Encode(products)
    })

    http.ListenAndServe(":8080", nil)
}
