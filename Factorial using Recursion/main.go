package main

import "fmt"

func fact(x int) int {
	if x < 2 {
		return 1
	} else {
		return x * fact(x - 1)
	}
}

func main() {
	var x int
	fmt.Scan(&x)
	fmt.Println(fact(x))
}
