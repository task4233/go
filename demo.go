package main

import (
	"fmt"
)

func main() {
	var i int
	fmt.Scan(&i)
	unless i == 0 {
		fmt.Println(i)
	}
}
