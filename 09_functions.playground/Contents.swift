import UIKit

//func имяФункции (принимаемые, параметры) -> возвращаемые параметры {
//	... тело функции ...
//}

// 1st. 1 of september journal

var journalArray = [String]()

let name = "Polina"
let profession = "programmer"

journalArray.append(name)
journalArray.append(profession)

let name2 = "Sergey"
let profession2 = "jourist"

journalArray.append(name2)
journalArray.append(profession2)

let name3 = "Valik"
let profession3 = "psycholog"

journalArray.append(name3)
journalArray.append(profession3)


//print(journalArray)

// 2nd.

var arrayJournal = [String]()

func addStudent (name: String, professional: String){
	
	arrayJournal.append(name)
	arrayJournal.append(professional)
	
	//print(arrayJournal)
}


addStudent(name: "Jack", professional: "Pirate")
addStudent(name: "Ivan", professional: "Astronaut")
addStudent(name: "Serg", professional: "Android dev")
addStudent(name: "John", professional: "Ios dev")
addStudent(name: "Valik", professional: "Java dev")



//print(arrayJournal)

// function for sum

func calculate(number1: Int, number2: Int) -> Int {
	
	return number1 + number2
}


let sum = calculate(number1: 37657657, number2: 876876)
//print(sum)



var money = [2,3,5,6,7,9,43,212,45,53]
var money2 = [34,23,543,123,5542,32]

func calcMoney (inArray: [Int]) -> Int{
	
	var sum = 0
	for i in inArray {
		sum += i
	}
	
	return sum
}

calcMoney(inArray: money2)
calcMoney(inArray: money)

let summary = calcMoney(inArray: money2) + calcMoney(inArray: money)

//print("ammount of money - \(summary)")



func generalFunc(answer: Bool) -> () -> String {
	
	func sayYes() -> String {
		return "Yes"
	}
	
	func sayNo() -> String{
		return "No"
	}
	
	
	return answer ? sayYes : sayNo
}

generalFunc(answer: true)()

//*************************
//3) Создать 3 функции 1 которая ничего не принимает и ничего не возвращает. 2)Принимает но не возвращает. 3)И принимает и возвращает = и все три вызвать потом
func firstFunc () {
	print("this is 1st func")
}

func secondFunc (parameterZero: String) {
	print("\(parameterZero)")
	
}

func thirdFunc (parameterOne: Int) -> Bool {

	var returnParam = true
	
	switch parameterOne {
	case 0...5:
		returnParam = false
		print("this is 3rd func with \(returnParam) bool answer")
	default:
		returnParam = true
		print("this is 3rd func with \(returnParam) bool answer")
	}
	
	return returnParam
}

firstFunc()
secondFunc(parameterZero: "this is 2nd func")
thirdFunc(parameterOne: 4)




//4)Создать журнал для учителя который будет принимать имя студента , профессию и оценку и записывает это все в массив.И внесите 10 студентов туда и распечатаете через цикл for
var arrayOfStudents = [String]()

func teachersJournal (name: String, profession: String, age: Int, grade: Bool) {
	
	arrayOfStudents.append(name)
	arrayOfStudents.append(profession)
	arrayOfStudents.append(String(age))
	arrayOfStudents.append(String(grade))
	
	for (i) in arrayOfStudents {
		print(i)
	}
	
}
teachersJournal(name: "Andrian", profession: "Submitter", age: 31, grade: true)


//5)Создать функцию которая принимает имя и фамилию, потом положить это в массив и отсортировать и вывести результат в консоль :)

func nameSurname (name: String, surname: String) -> [String] {
	
	var namesArray = [name,surname]
	let namesArraySorted = namesArray.sorted()
	print(namesArraySorted)
	return namesArraySorted
}

nameSurname(name: "Andrian", surname: "Kryk")
nameSurname(name: "Valik", surname: "Domnenko")
nameSurname(name: "Sergey", surname: "Tsyganov")
nameSurname(name: "Sasha", surname: "Sidorenko")
nameSurname(name: "Jacob", surname: "Ages")


//6)Создайте функцию которая принимает параметры и вычисляет площадь круга

// S = π * R^2

func areaOfCirlce (radius: Float) -> Float {
	
	let pi: Float = 3.14159
	let areaCalculation = pi * (radius * radius)
	
	return areaCalculation
}

print(areaOfCirlce(radius: 4.00))


//7) Создайте Dictionary , с именем ученики , где ключ name и score , а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только именна по ключу

var dictOfPuples = ["nameOfPuples": ("Andrian","Ivan","Sergey","Vitaliy","John"), "score": (4,5,5,3,3)] as [String : Any]



print(dictOfPuples["nameOfPuples"]!)




