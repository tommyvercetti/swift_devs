import UIKit

enum TravelClass {
	case First, Business, Economy
}

let travel = TravelClass.First

//-----------------Game----------

enum Medal{
	case gold
	case silver
	case bronze
}

let medal = Medal.bronze


switch medal {
case .gold:
	print("your medal is gold")
case .silver:
	print("your medal is silver")
case .bronze:
	print("your medal is bronze")
}
//---------------days of week--------

enum daysOfWeek{
	case Mon
	case Tue
	case Wed
	case Thu
	enum Fri {
		case day
		case night
	}
	case Sat
	case Sun
}

let day = daysOfWeek.Fri.day
print(day)

//-----------------------my type-----------

enum Operation{
	case doubl(Double)
	case intege(Int)
	case flot(Float)
	case stringa(String)
}

var dictionary: Dictionary <String,Operation> = [
	"Double": Operation.doubl(255.1),
	"Integer": Operation.intege(10),
	"Float": Operation.flot(22.2),
	"String": Operation.stringa("stroka")
]


let pr = dictionary["String"]

print(pr!)

//3) Создайте по 1-2 enum разных типов.
enum raznyieTipy {
	case One, Two, Three, Fortytwo
}

enum razlichnyeTipy{
	case meat
	case fish
	case vegetables
	enum beverages{
		case alco
		case nonalco
	}
	
}

//4) Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.
enum anketaForActivities{
	case golf
	case trampoline
	case Robots
	case segways
	case playground
	enum waterActivities {
		case pool
		case catamarans
	}
}

let activities = anketaForActivities.golf

switch activities {
case anketaForActivities.golf:
	print("Wanna run balls?")
case anketaForActivities.trampoline:
	print("Wanna jump?")
case anketaForActivities.Robots:
	print("Wanna rule terminators?")
case anketaForActivities.segways:
	print("Wanna ride?")
case anketaForActivities.playground:
	print("Wanna play with kids?")
	//case anketaForActivities.waterActivities.catamarans:
	//	print("Wanna ride on lake?")
	//case anketaForActivities.waterActivities.pool:
	//	print("Wanna swim?")
	
}


enum AnketaForEat{
	case meat
	case fish
	case vegetables
	enum beverages{
		case alco
		case nonalco
	}
	
}
let whatToEat = AnketaForEat.meat

switch whatToEat {
case .meat:
	print("meat")
case .fish:
	print("fish")
case .vegetables:
	print("vegies")
}
let whatToDrink = AnketaForEat.beverages.alco

switch whatToDrink {
case .alco:
	print("Wanna beer?")
case .nonalco:
	print("wanna apple juice")
}



//5) Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов. Пример результата в консоли "apple green", "sun red" и т.д.

enum RainbowColours {
	case red, orange, yellow, green, blue, indigo, violet
}

func showItemsName (item: RainbowColours){
	let itemsArray = ["sky","apple","sun","grass","car","tv","spoon","lamp","tree","lemon","flower"]
	
	switch item {
	case RainbowColours.red:
		print("\(itemsArray[2]) is red")
	case RainbowColours.orange:
		print("\(itemsArray[1]) is apple")
	case RainbowColours.yellow:
		print("\(itemsArray[9]) is yellow")
	case RainbowColours.green:
		print("\(itemsArray[2]) is red")
	case RainbowColours.blue:
		print("\(itemsArray[2]) is red")
	case RainbowColours.indigo:
		print("\(itemsArray[2]) is red")
	case RainbowColours.violet:
		print("\(itemsArray[2]) is red")
	
		
		
	break
	}
}
	showItemsName(item: .red)




//6) Создать функцию, которая выставляет оценки ученикам в школе.
//7) Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.

































