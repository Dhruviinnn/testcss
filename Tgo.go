package main

import (
	"fmt"
	"os"
)

func main() {

	// ERROR 1 → Unused variable (lint / staticcheck / golangci will catch)
	name := "Dhruvin"

	// ERROR 2 → Ignored error return (errcheck / golangci will catch)
	file, _ := os.Open("data.txt")

	fmt.Println("File opened:", file.Name())

	// EXTRA → Potential panic if file is nil
	file.Close()
}
