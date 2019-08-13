import UIKit
/*
замыкания - анонимные ф-ции, которые можно передавать в качестве аргументов другим ф-ям

{
	(параметры) -> возвращаемый_тип in
		операторы
	
}
*/

let names = ["Максим","Сергей","Николай","Артем","альберт","Том"]

let s = names.sorted()

//(String, String) -> Bool

let t1 = names.sorted { (s1: String, s2: String) -> Bool in
	
	return s1 < s2
}

let t2 = names.sorted { (s1, s2)  in return s1 < s2}

let t3 = names.sorted { (s1, s2) in s1 < s2}

let t4 = names.sorted { (s1, s2) in s2 < s1}

let t5 = names.sorted { (s1, s2) in s1.count < s2.count}

//  автоматические имена аргументов

let p1 = names.sorted(by: { $0 < $1 })
let p2 = names.sorted(by: { $1 < $0 })

let p3 = names.sorted(by: { $0.count < $1.count})

//захват значения с помощью замыкания(с помощью closure)

func makeTranslator (stroka: String) -> (String) -> (String) {
	
	return {(name:String) -> String in return (stroka + " " + name + "!")}
}

var englishWelcome = makeTranslator(stroka: "Hi")
englishWelcome ("Jack")

var rusWelcome = makeTranslator(stroka: "Привет")
//print(rusWelcome("Женя"))


//********************************************************************
//3) Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.
let arrayOne = ["A","D","F","T","G","V","D","E","R","H","Y","U","J","B","F","S","D","G","i","h","r","g","f","s","z"]

let sortAltpabeticalOne = arrayOne.sorted { (s1: String, s2: String) -> Bool in
	
	return s1 < s2
}
let sortAntiAlphabeticalOne = arrayOne.sorted { (s1: String, s2: String) -> Bool in
	
	return s1 > s2
}
print(sortAltpabeticalOne, sortAntiAlphabeticalOne)


//4) Создать метод который запрашивает имена друзей, после этого имена положить в массив. Массив отсортировать по количеству букв в имени.

var arrayOfNames = [String]()

func collectingNames (name:String) {
	
	arrayOfNames.append(name)
}
collectingNames(name: "Berdymuhammed")
collectingNames(name: "Zhenia")
collectingNames(name: "Andrian")

let arrayOfNamesSorted = arrayOfNames.sorted(by: { $0.count < $1.count})
print(arrayOfNamesSorted)

//5) Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.

var dictList = [String:Int]()

func keyFunction (name: String, age: Int) {
	dictList = [name:age]

	for i in dictList.keys {
		print("My name is \(name), and I'm \(dictList[name]!) yars old.")
	}
}

keyFunction(name: "Andrian", age: 31)






//6) Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.


var stringArray = [String]()
var numberArray = [Int]()

func checkArray (text:[String], number:[Int]){
	
	if text.isEmpty && number.isEmpty {
		stringArray.append("some Text")
		numberArray.append(42)
	}
	
	print(stringArray,numberArray)
	
	
}

checkArray(text: stringArray, number: numberArray)
