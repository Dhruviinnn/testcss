package main

import (
	"fmt"
	"os"
)

func main() {

	// ERROR 1 → unused variable (compile error)
	name := "Dhruvin"

	// ERROR 2 → unused import (compile error)
	// fmt is used later but imagine if removed, this triggers

	// ERROR 3 → ignored error return (lint / vet)
	file, _ := os.Open("data.txt")

	// ERROR 4 → possible nil dereference (runtime risk)
	fmt.Println(file.Name())

	// ERROR 5 → defer on possible nil
	defer file.Close()

	// ERROR 6 → wrong format specifier (vet warning)
	fmt.Printf("Number: %d", "hello")

	// ERROR 7 → unreachable code
	return
	fmt.Println("This will never run")

	// ERROR 8 → shadow variable
	if true {
		name := 123
		fmt.Println(name)
	}
}
