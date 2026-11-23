// An optional can contain a value or nil.
var middleName: String? = nil
middleName = "Kumar"

// Optional binding safely unwraps an optional.
if let name = middleName {
    print("Middle name: \(name)")
} else {
    print("Middle name is not available")
}

// Nil-coalescing operator provides a fallback value.
let displayName = middleName ?? "Guest"
print("Display name: \(displayName)")

// Guard is useful for exiting a scope when a value is missing.
func printLength(of text: String?) {
    guard let text = text else {
        print("No text provided")
        return
    }
    print("Length: \(text.count)")
}

printLength(of: "Swift")
printLength(of: nil)
