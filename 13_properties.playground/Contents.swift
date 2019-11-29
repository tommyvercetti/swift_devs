import Foundation
/*
            Свойства - значения, связанные с классом или его екземпляром.
                    1) Если свойство связано с экземпляром класса, то они называются свойствами экзмепляра класса
                    2) А если с самим классом, то свойствами типа.
 
            Свойства делятся на 2 типа:
                    1. Сохраняемые свойства
                    2. Вычисляемые свойства
 */



struct Observer {
    
    var name: String{
        
        willSet {
            
            print("attention! value want to change to" + " = " + newValue)
        }
        
        didSet{
            
            print("didSet" + " = " + oldValue)
            
            if name != "" {
                name = name.capitalized
            }
        }
    }
}

var obser = Observer(name: "babushka")

obser.name //getter
obser.name = "cat" //setter

print(obser.name)


struct ComputerProperty {
    
    var firstName: String{
        didSet {
            if firstName != "" {
                firstName = firstName.capitalized
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        
        set {
            //print("setter is working" + " " + newValue)
        }
    }
}


var compProp = ComputerProperty(firstName: "Kuki", lastName: "Smith")

compProp.fullName = "sadasd" // не сохраняет
compProp.fullName

compProp.firstName = "jack"
print(compProp.fullName)










