package main

import (
	"fmt"
)

func main() {
	const i = 1
	unless i%2 == 0 {
		fmt.Printf("%d is odd number\n", i)
	}
}
