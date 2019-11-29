import UIKit
import Foundation

var str = "Свойства типа"
var MaxLenght = 15


struct MyStruct {
    
    static var count = 0
    var name = String (){
        didSet{
            if name.count > MaxLenght {
                name = oldValue
            }
        }
    }
    
    init(name: String) {
        
        self.name = name
        
    }
}

var struct1 = MyStruct(name: "Ivan")
//struct1.name = "dfsfsdfsdfsdfsfs"
//print(struct1.name)
var struct2 = MyStruct(name: "Max")
var struct3 = MyStruct(name: "Kirill")


class AgeBoy{
    
    static var maxAge = 8
    
    lazy var say = "I'm good"
    
    var name = String(){
        didSet{
            if name.count > MaxLenght {
                name = oldValue
            }
        }
    }
    var age = 8{
        didSet {
            if age > AgeBoy.maxAge{
                age = oldValue
                print(" enter from 6 to 8 years")
            }
        }
    }
    
}

var ageClass = AgeBoy()
ageClass.name = "Ivan"
ageClass.age = 8
ageClass.say

/************************************************************************************************************************************************/



class Human{
    var name :String
    static let maxAge = 100
    var age: Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    
    
    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

enum Direstions {
    
    static let description = "directions in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical: Bool {
        return self == .Top || self == .Bottom
    }
    
    var isHorizontal : Bool {
        return !isVertical
    }
}

let d = Direstions.Right

d.isVertical
d.isHorizontal




Direstions.description


struct Cat{
    
    var name: String
    static let maxAge = 20
    static var totalCats = 0
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
        
        
        Cat.totalCats+=1
    }
    
}



let human = Human(name: "Peter", age: 40)

var cat = Cat(name: "Barsik", age: 1)
var cat2 = Cat(name: "Black", age: 2)
var cat3 = Cat(name: "Pirat", age: 10)

Cat.totalCats

var tempAge = 355

cat3.age = tempAge

print(Cat.totalCats)
print(cat3.age)



/************************************************************************************/

struct Student {
    
    var firstName : String{
        
        willSet(newFirstName){
            print("will set " + newFirstName + " instead of " + firstName)
        }
        didSet(oldFirstName){
            print("did set " + firstName + " instead of " + oldFirstName)
            
            firstName = firstName.capitalized
        }
    }
    
    var lastName : String {
        didSet{
            lastName = lastName.capitalized
        }
        
    }
    
    var fullName :String{

        get  {
          return firstName + " " + lastName
        }
        //return firstName + " " + lastName тоже самое что и вверху
        
        set {
            print("fullName wants to be set to " + newValue)

            let words  = newValue.components(separatedBy: " ")

            if words.count > 0 {
                firstName = words [0]
            }

            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}


var student = Student(firstName: "Andrian", lastName: "Kryk")

student.firstName
student.lastName
student.fullName

student.firstName = "Bob"

student.firstName
student.lastName
student.fullName


student.fullName  = "Ivan Ivanov"


/**********************************************************************************************************************/

struct FileDescription {
    
    static var fileMaxSize: Int = 1024 // for type
    
    var fileSize: Int { // for instance
        didSet {
            if fileSize > FileDescription.fileMaxSize {
                fileSize = oldValue
            }
        }
    }
    
    var fileFolderDestination : String // for instance
    var fileName : String // for instance
    
    var fileDestination : String { // for instance + computer!!
        
        return  fileFolderDestination + fileName
    }
    
    var fileType : Bool // for instance
    
    lazy var fileContent = "INFO: ScreenCapturer.cpp:67: Screenshot from renderer emulator: Saving state on exit with session uptime 1119194 ms andrian@Andrians-MacBook-Pro ~ % " //lazy

    
}

//var file1 = FileDescription(fileFolderDestination: "/Users/andrian/!private/iOS/repos/skutarenko", fileDestination: "/Users/andrian/!private/iOS/repos/skutarenko/03_Tuples.playground", fileName: "03_Tuples.playground", fileType: true, fileContent: "dd")


var file1 = FileDescription(fileSize: 234, fileFolderDestination: "/Users/andrian/!private/iOS/repos/skutarenko/", fileName: "03_Tuples.playground", fileType: true)

file1
file1.fileSize = 20000
file1.fileFolderDestination
file1.fileName
file1.fileDestination
file1.fileType
file1.fileContent

print(file1)



/* enums with RGB Int */


enum ColoursRGB {
    
    case Red
    case Green
    case Blue
}


/************************************************************************************************************************************************/

//2. Создать класс "IOS_Students",добавить ему property: date_of_birth, skills. Для тренировки.
//Создавайте свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.

class IosStudents {
    
    var dateOfBirth : Int
    var prorgammingSkills : Bool
    var firstName : String
    var lastName : String{
        didSet{
            if lastName != "" {
                lastName = lastName.capitalized
            }
        }
    }
    var fullName : String{
        
        return firstName + " " + lastName
    }
    
    
    init(dateOfBirth : Int, prorgammingSkills : Bool, firstName : String, lastName : String ) {
        self.dateOfBirth = dateOfBirth
        self.prorgammingSkills = prorgammingSkills
        self.firstName = firstName
        self.lastName = lastName
    }
}

var student1 = IosStudents(dateOfBirth: 23, prorgammingSkills: true, firstName: "Andrian", lastName: "Kryk")


student1

/*
 3. Написать структуру "Create_Triangle",с двумя свойствами - угол A,угол C.
 И создать 2 вычисляемых свойства - те же угол А,угол С.
 И если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
 Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.
*/

struct CreateTriangle {
    
    var angleA : Int {
        didSet {
            if angleA + angleC > 178 {
                print("incorrect data in angle A")
                angleA = oldValue
            }
        }
    }
    var angleC : Int{
        didSet {
            if angleA + angleC > 178 {
                print("incorrect data in angle C")
                angleA = oldValue
            }
        }
    }
    var angleB :Int {
        get {
        return 180 - (angleA + angleC)
        }
        
    }
    
}

var result = CreateTriangle.init(angleA: 1, angleC: 1)


result.angleA = 148
result.angleC = 12
print("Angle B is \(result.angleB)")

/*
 4. Создать структуру "Резюме", у которой есть такие свойства:
 - Фамилия,
 - Имя.
 - Должность,
 - Опыт,
 - Контактные данные(телефон, емейл),
 - О себе(можно записать какие-то пару предложений на выбор).*/

struct Resume {
    var lastName : String {
        didSet{
            if lastName != ""  {
                lastName = lastName.capitalized
            }
        }
    }
    var firstName : String{
        didSet{
            if firstName != ""  {
                firstName = firstName.capitalized
            }
        }
    }
    var fullName : String{
        get {
            return firstName + " " + lastName
        }
        
    }
    var possition : String
    var expirience : Int
    var contactPhone : Int
    var contactEmail : String
    var BIO : String
    
}





/*
 5. Задание на закрепление предыдущих тем:
 Создать журнал, что б можно было писать имя, фамилию и оценку
 Поставить ограничения: имя и фамилия не выше 15 символов каждое.
 И оценка не выше 5.
 Если везде значения превышаться выдавать об этом Сообщения в консоль.

 6. Написать класс,в котором есть 4 функции:
 -пустая, которая просто выводит сообщение через print,
 - которая принимаете параметры и выводит их в консоль,
 - которая принимает и возвращает параметры.
 - которая принимает замыкание и распечатывает результаты в консоль
*/



