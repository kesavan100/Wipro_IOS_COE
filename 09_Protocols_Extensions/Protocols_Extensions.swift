protocol Describable {
    var description: String { get }
    func describe()
}

struct MobileApp: Describable {
    let description: String

    func describe() {
        print(description)
    }
}

// Extensions add functionality to an existing type.
extension String {
    var firstLetterUppercased: String {
        guard let first = first else { return self }
        return first.uppercased() + dropFirst()
    }
}

let app = MobileApp(description: "A simple learning app")
app.describe()
print("swift".firstLetterUppercased)
