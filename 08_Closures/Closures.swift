let numbers = [1, 2, 3, 4, 5]

// Closure stored in a variable.
let multiply: (Int, Int) -> Int = { first, second in
    first * second
}
print("Product: \(multiply(4, 5))")

// Higher-order functions accept closures as arguments.
let doubled = numbers.map { $0 * 2 }
let evenNumbers = numbers.filter { $0 % 2 == 0 }
let sum = numbers.reduce(0, +)

print("Doubled: \(doubled)")
print("Even numbers: \(evenNumbers)")
print("Sum: \(sum)")
