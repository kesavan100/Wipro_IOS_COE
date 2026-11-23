// Array: ordered collection; can contain duplicate values.
var languages = ["Swift", "Python", "Java"]
languages.append("Kotlin")
print("Languages: \(languages)")
print("First language: \(languages[0])")

// Set: unordered collection of unique values.
var uniqueNumbers: Set<Int> = [1, 2, 2, 3, 4]
uniqueNumbers.insert(5)
print("Unique numbers: \(uniqueNumbers)")

// Dictionary: key-value pairs.
var marks = ["Swift": 90, "Python": 85]
marks["Java"] = 80
print("Swift mark: \(marks["Swift"] ?? 0)")
for (subject, mark) in marks {
    print("\(subject): \(mark)")
}
