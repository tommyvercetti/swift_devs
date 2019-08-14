func fibonacci (x: Int) -> Int {
	if x == 0 {
		return 0
	}else if x == 1 {
		return 1
	}
	return fibonacci(x: x-1) + fibonacci(x: x-2)
}

var new = fibonacci(x: 4)
