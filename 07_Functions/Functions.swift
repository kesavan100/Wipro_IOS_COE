// Parameters, argument labels and a return type.
func calculateTotal(price: Double, quantity: Int) -> Double {
    return price * Double(quantity)
}

func greet(name: String, message: String = "Welcome") {
    print("\(message), \(name)!")
}

let total = calculateTotal(price: 149.50, quantity: 3)
print("Total: \(total)")
greet(name: "Kesavan")
greet(name: "Learner", message: "Good job")
