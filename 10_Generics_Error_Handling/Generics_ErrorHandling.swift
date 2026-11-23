// Generic function works with different types.
func displayItems<T>(_ items: [T]) {
    for item in items {
        print(item)
    }
}

enum InputError: Error {
    case emptyValue
}

func validate(username: String) throws -> String {
    guard !username.isEmpty else {
        throw InputError.emptyValue
    }
    return "Welcome, \(username)"
}

displayItems([10, 20, 30])
displayItems(["Swift", "iOS"])

do {
    print(try validate(username: "Kesavan"))
    print(try validate(username: ""))
} catch InputError.emptyValue {
    print("Error: username cannot be empty")
} catch {
    print("Unexpected error: \(error)")
}
