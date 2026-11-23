class Department {
    let name: String
    weak var manager: Employee?

    init(name: String) { self.name = name }
}

class Employee {
    let name: String
    var department: Department?

    init(name: String) { self.name = name }
    deinit { print("Employee \(name) is deallocated") }
}

// A strong reference keeps an instance alive. A weak reference does not
// increase the reference count and is automatically set to nil when needed.
do {
    let department = Department(name: "Engineering")
    let employee = Employee(name: "Ravi")
    employee.department = department
    department.manager = employee
    print("\(employee.name) works in \(department.name)")
}
// The weak manager reference prevents a strong reference cycle here.
