package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, Docker Deployment!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server running on port 80")
	http.ListenAndServe(":8000", nil) // <- Confirme que a porta é ":80"
}
