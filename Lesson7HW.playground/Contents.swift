//Task1

class Person {
    let name: String
    let surname: String
    var age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

class Director: Person {
    var experience: String
    var rating: String
    
    init(name: String, surname: String, age: Int, experience: String, rating: String) {
        self.experience = experience
        self.rating = rating
        
        super.init(name: name, surname: surname, age: age)
    }
}

class Adress {
    let coordinateX: Int
    let coordinateY: Int
    let streetName: String
    
    init(x: Int, y: Int, streetName: String) {
        self.coordinateX = x
        self.coordinateY = y
        self.streetName = streetName
    }
}

class Student: Person {
    private var classNumber: Int
    private var lessonAssesment: [(String, Int)]
    
    init(name: String, surname: String, age: Int, classNumber: Int = 9, lessonAssesment: [(String, Int)] = []) {
        self.classNumber = classNumber
        self.lessonAssesment = lessonAssesment
        super.init(name: name, surname: surname, age: age)
    }
    
    func lessonAssesmentStudent() {
        print("Ученик - \(name) \(surname) - Класс \(classNumber)")
        lessonAssesment.forEach({ print("\($0.0) - \($0.1)") })
    }
}

class School {
    var students: [Student]
    private let schoolName: String
    private let adress: Adress
    private var director: Director
    
    init(students: [Student], schoolName: String, adress: Adress, director: Director) {
        self.students = students
        self.schoolName = schoolName
        self.adress = adress
        self.director = director
    }
    
    func infoToSchool() {
        print("Школа: \(schoolName), Адресс: \(adress.streetName), Координаты: x - \(adress.coordinateX), y - \(adress.coordinateY) \nКоличество учеников: \(students.count) \nДиректор: \(director.surname) \(director.name), Опыт: \(director.experience), Рейтинг: \(director.rating) ")
    }
}

let studentIvan: Student = Student(name: "Иван", surname: "Иванов", age: 13, classNumber: 7, lessonAssesment: [("Физика", 6), ("Информатика", 4), ("Биология", 7), ("Математика", 9)])
let studentOleg: Student = Student(name: "Олег", surname: "Шовга", age: 13, lessonAssesment: [("Информатика", 9)])
let studentNastia: Student = Student(name: "Анастасия", surname: "Пискур", age: 14, lessonAssesment: [("Математика", 4)])
let studentOlga: Student = Student(name: "Ольга", surname: "Шовга", age: 13, lessonAssesment: [("Биология", 9)])
let studentViktor: Student = Student(name: "Виктор", surname: "Реут", age: 14, lessonAssesment: [("Химия", 8)])
let studentDenis: Student = Student(name: "Денис", surname: "Рукевич", age: 13, lessonAssesment: [("Физика", 6)])

let students: [Student] = [studentIvan, studentOleg, studentOlga, studentDenis, studentNastia, studentViktor]

let adreesSchool: Adress = Adress(x: 436265256, y: 23423545, streetName: "Центральная")

let director: Director = Director(name: "Алексей", surname: "Наумов", age: 40, experience: "10 лет", rating: "Отлично")

let school: School = School(students: students, schoolName: "Школа №1", adress: adreesSchool, director: director)


studentIvan.lessonAssesmentStudent()

school.infoToSchool()

students.forEach({ print("\($0.lessonAssesmentStudent())") })
