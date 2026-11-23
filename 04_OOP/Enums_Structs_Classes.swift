enum EnrollmentStatus {
    case enrolled, inProgress, completed
}

struct Student {
    let name: String
    var score: Int

    func displayDetails() {
        print("Student: \(name), score: \(score)")
    }
}

class Course {
    let title: String
    var status: EnrollmentStatus

    init(title: String, status: EnrollmentStatus) {
        self.title = title
        self.status = status
    }
}

let status = EnrollmentStatus.inProgress
let student = Student(name: "Arun", score: 88)
student.displayDetails()
let course = Course(title: "Swift Basics", status: status)
print("Course: \(course.title), status: \(course.status)")
