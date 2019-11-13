/*
 class ИмяКласса {
 
// свойства классов
// методы этого класса
 
 }
*/
class ParentClass {
    var array = [String]()
    var name = ""
    var age = 20
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class ChildClass:ParentClass {
    func method(name:String) {
        print("Hello, \(name)")
    }
}

var sonClass = ChildClass(name: "Igor", age: 23) // екземпляр класса
sonClass.name // свойство класса
sonClass.method(name: "Jack") //метод экземпляоа класса
sonClass.name = "Bob"
sonClass.age = 24
//----------------------struct
struct NameStruct{
    var name: String
    var age: Int
}
var str = NameStruct(name: "Max", age: 20)
str.name = "Bob"

//2) Создать класс родитель и 2 класса наследника.

class RoditelskiyClass {
    var name = "John"
    var lastName = "Smith"
    var age = 45
    
    init(name: String, age: Int, lastName: String) {
        self.name = name
        self.lastName = lastName
        self.age = age
    }
}

class SynClass:RoditelskiyClass{
    
    func funcOne(name: String, lastname: String, age: Int) {
        print("hello, \(name) \(lastName), you're \(age) ages old and you're the man")
    }
}

class DochClass:RoditelskiyClass{
    
    func funcTwo(name: String, lastname: String, age: Int) {
        print("hello, \(name) \(lastName), you're \(age) ages old and you're the girl")
    }
}

var syn = SynClass(name: "Sasha", age: 19, lastName: "Smith")
var doch = DochClass(name: "", age: 1, lastName: "dsfsd")

syn.funcOne(name: "Alezzz", lastname: "Smith", age: 15)
syn.name = "Ssss"
doch.funcTwo(name: "Olga", lastname: "sdfsdfs", age: 15)

//3) Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает что дом уничтожен)и т.п.

class House {
    var width = 5.0
    var long = 5.0
    var flors = 2
    var basement = true
    
    init(width: Double, long:Double , flors:Int, basement: Bool ) {
        self.width = width
        self.long = long
        self.flors = flors
        self.basement = basement
    }
    
    func createHouse()  {
        print("House was created")
        
        func caclFlorSquare() -> Double {
            return width * long
        }
        print("One flor square is \(caclFlorSquare())")
        
        print("House with \(flors) flors")
        func caclAllFlorsSquare() -> Double {
            return caclFlorSquare() * Double(flors)
        }
        print("Square all flors is \(caclAllFlorsSquare()) meters")
        
        
        func caclWholeSquareWithBasement() -> Double {
            if basement == true {
                let basementSquareCoef = 0.75
                let basementSquare = caclFlorSquare() * basementSquareCoef
                print("House with basement")
                return caclAllFlorsSquare() + basementSquare
            } else {
                print("Without basement")
                return caclAllFlorsSquare()
            }
        }
        print("It's whole square is \(caclWholeSquareWithBasement()) meters")

    }
    
    func destroyHouse() {
        
        print("House destroyed")
    }
}

var someHouse = House(width: 34, long: 32, flors: 4, basement: true)
someHouse.createHouse()
someHouse.destroyHouse()

//4) Создайте класс с методами, которые сортируют массив учеников.

var arrayOfStudents = ["Vasiliy","Petro","Ivan","Andrei","Oleg","Jacob","John","Yan","Alex"]

class JournalOfStudents {
    func sortingArrayAlphabetical (){
        let sort = arrayOfStudents.sorted(by: {$0 < $1})
        print(sort)
    }
    func sortingArrayNonAlphabetical (){
        let sort = arrayOfStudents.sorted(by: {$0 > $1})
        print(sort)
    }
}

//debug area
var someJournalOfStudents = JournalOfStudents()
someJournalOfStudents.sortingArrayAlphabetical()
someJournalOfStudents.sortingArrayNonAlphabetical()

//5) Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.

struct Triangle{
    var osnova: Double
    var vysota: Double
    
    func triangleSquare () -> Double {
        return 0.5 * osnova * vysota
    }
}

var someTriangle = Triangle(osnova: 56.5, vysota: 2.3)
print("square is \(someTriangle.triangleSquare())")




//в структурах все копируется, а в классах - ссылка (наследование) + в страктах не нужно создавать инит.

//Дополнительно(на закрепление всех пройденных тем):
//Напишите простую программу, которая называет комбинации в покере.

//Старшая карта - самая слабая комбинация
//Пара
//Две пары
//Тройка
//Стрит
//Флеш
//Фулл хаус
//Каре
//Стрит флеш
//Флеш рояль - самая сильная комбинация

//1) Записываем комбинации в массив.



//2) Если определённая комбинация - выводим соответствующую запись в print.


//var arrayOfCombinations = ["High Card","Pair","Two Pair","3 of Kind","Straight","Flush","Full House","4 of Kind","Straight Flush","Royal Flush"]
//let arrayOfSuits = ["bubna", "chirva", "krest", "pika"]
//let firstItem = arrayOfCombinations[0]
//for (i,v) in arrayOfCombinations.enumerated() {
//    /print("Number \(i) is combination \(v)")
//}
//if arrayOfCombinations.contains("High Card") {
//    print("высшая карта побеждает")
//}
//let randomCombination = arrayOfCombinations.randomElement()
//let randomSuit = arrayOfSuits.randomElement()
//print(randomSuit!)
//print(randomCombination!)



//Результат в консоли примерно такой:
//"У вас бубновый стрит флеш ".
//Подсказки:
//- для мастей можно использовать перечисления(enum),
//- В зависимости от комбинации - в консоли печатаем тот или иной ответ.
//- Комбинации можно взять отсюда:
//http://www.russiapokernews.com/poker-hand-ranking


enum Suit: String,CaseIterable {
    case bubna = "Diamonds"
    case chirva = "Hearts"
    case krest = "Clubs"
    case pika = "Spade"
}

enum Combinations: String,CaseIterable {
    case highCard = "High Card"
    
//    case pair = "Pair"
//    case twoPairs = "Two Pair"
//    case threeKind = "3 of Kind"
//    case straignht = "Straight"
//    case flush = "Flush"
//    case fullHouse = "Full House"
//    case fourKind = "4 of Kind"
    case straightFlush = "Straight Flush"
    enum suitStraightFlush: String{
           case bubna = "Diamonds StraightFlush"
           case chirva = "Hearts StraightFlush"
           case krest = "Clubs StraightFlush"
           case pika = "Spade StraightFlush"
       }
    case royalFlush = "RoyalFlush"
    enum suitRoyalFlush: String{
        case bubna = "Diamonds RoyalFlush"
        case chirva = "Hearts RoyalFlush"
        case krest = "Clubs RoyalFlush"
        case pika = "Spade RoyalFlush"
    }

}

//let isCombinationWithSuit =

let arc4randomCombination = Combinations.allCases.randomElement()
let arc4randomSuit = Suit.allCases.randomElement()

print("random combination is \(arc4randomSuit!) \(arc4randomCombination!)")



