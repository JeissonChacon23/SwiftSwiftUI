import Foundation

//Variables String
var greeting = "Hello, "
let name = "Jeisson"

//Variables Char
var sex = "M"
var symbol = "\u{2665}"
var hart = "♥️"

//Integer
var year: Int16 = 2024

//Float
var pi: Float = 3.14159265359

//Double
var piDouble: Double = 3.141592653589793238462643383279

//Boolean
var imHappy: Bool = true

print(greeting + name + " " + symbol)


//Operators

var a : Int16 = 12
var b : Int16 = 5

var sum : Int16 = a + b
var sub = a - b


//Assignment operations

var example : Int16 = 5
example += 10
print(example)
example -= 5
print(example)
example *= 2
print(example)
example /= 2
print(example)


//Logic operators
let age: Int8 = 30
let isAdult: Bool = age >= 18
let isTeen: Bool = age >= 13 && age < 18
print(isAdult)

let isSunny: Bool = true
let temperature: Int8 = 25
let isPlasant: Bool = isSunny && temperature > 15
let goToBeach: Bool = isSunny || temperature < 25
print(isPlasant)
print(goToBeach)


//Casting

let integerNumber : Int8 = 10
let decimalNumber: Double = 25.64
let superNumber: Double = Double(integerNumber) + decimalNumber
print(superNumber)

let exampleString : String = "123"
print(exampleString)


//Exercises
/*
 Attendance record: Declare a variable and assign it a number of class attendances.
 Declares a variable totalClasses and assigns it the total number of classes.
 Calculates the percentage using the formula percentage = (attendance / totalClasses) * 100
 Prints the attendance percentage
 */
var attendance: Int8 = 10
let totalClases: Int8 = 100
let percentage: Double = Double(attendance) / Double(totalClases) * 100
print(percentage)
//#expect(calculatePercentage(of: attendance, total: 100) == attendance) //Check this



/*
 Calculates the BMI (Body Mass Index).
 State two variables for weight (kilograms) and height (meters).
 Uses the formula BMI = Weight / (height * height)
 Print the result
 */

var weight: Double = 64
var height: Double = 1.70
let imc: Double = weight / (height * height)
print("You're imc is \(imc)")



/*
 Discount calculation
 Calculate two variables: Original price and discount percentage.
 Calculate the price after discount using the following formula
 Discounted price = Original price - (Original price * Discount percentage / 100)
 Print the original price and the discounted price.
 */
let originalPrice: Double = 100
let discountPercentage: Double = 20
let discountedPrice: Double = originalPrice - (originalPrice * discountPercentage / 100)
print("Original price: \(originalPrice)\n Discounted price: \(discountedPrice)")


//Functions
func showMyName() {
    print("My name is Jeisson")
}
showMyName()

func showMyCustomName(name: String){
    print("Hello \(name)")
}
showMyCustomName(name: "Jeisson")

func calculateSum(_ a: Int8, _ b: Int8){
    let result: Int8 = a + b
}
calculateSum(10, 20)


func calculate(_ a: Int, _ b: Int) -> Int{
    let result: Int = a + b
    return result
}

let mySuperResult: Int = calculate(10, 20)
print(mySuperResult)


//If-Else
let userAge: Int = 19
if userAge >= 18{
    print("You're older than 18")
}else{
    print("You're younger than 18")
}


func greeting(_ hour:Int8){
    if hour < 12{
        print("Good Morining")
    }else if hour < 18{
        print("Good afternoom")
    }else{
        print("Good Evening")
    }
}
greeting(16)

func getMonth(_ month: Int8){
    if month == 1 {
        print("Jenuary")
    }else if month == 2{
        print("february")
    }else if month == 2{
        print("March")
    }else if month == 2{
        print("April")
    }else if month == 2{
        print("May")
    }else if month == 2{
        print("June")
    }else if month == 2{
        print("July")
    }else if month == 2{
        print("August")
    }else if month == 2{
        print("September")
    }else if month == 2{
        print("October")
    }else if month == 2{
        print("November")
    }else{
        print("December")
    }
}


//Switch
func getMonthWithSwitch(_ month: Int8){
    switch month{
    case 1:
        print("Jenuary")
    case 2:
        print("february")
    case 3:
        print("March")
    case 4:
        print("April")
    case 5:
        print("May")
    case 6:
        print("June")
    case 7:
        print("July")
    case 8:
        print("August")
    case 9:
        print("September")
    case 10:
        print("October")
    case 11:
        print("November")
    case 12:
        print("December")
    default:
    print("Invalid month")
    }
}


func getTrimester(_ month: Int8){
    switch month {
    case 1...3:
    print("First Trimester")
    case 4...6:
        print("Second Trimester")
    case 7...9:
        print("Third Trimester")
    default:
        print("Invalid month")
    }
}
getTrimester(2)


//Exercises
/*
 Calculate the area of a circle:
 Create a function that receives the radius of a circle and returns its area.
 Formula: area = (pi * radius * radius)
 Print the result
 */
func calculateCircleArea(_ radius: Double) -> Double{
    return piDouble * radius * radius
}
calculateCircleArea(15)


Double.pi
piDouble

/*
 Create a function that receives a number and with the help of an IF, prints whether the number is positive, negative or zero.
 */
func calculatePositivenegativeZero(_ number: Double){
    if number > 0{
        print("Positive")
    }else if number < 0{
        print("Negative")
    }else{
        print("Zero")
    }
}

calculatePositivenegativeZero(3)

func positivNegativSwitch(_ number: Double){
    switch number{
    case let x where x > 0:
        print("Positive")
    case let x where x < 0:
        print("Negative")
    default:
        print("Zero")
    }
}
positivNegativSwitch(-3)


//Array
let names: [String] = ["John", "Jane", "Jack"]
for name in names{
    print(name)
}
print(names)
print(names[1])

var dayOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
print(dayOfWeek[5])
print(dayOfWeek.count)
print(dayOfWeek.first)
print(dayOfWeek.last)
print(dayOfWeek.reversed())
print(dayOfWeek.shuffled())
print(dayOfWeek.sorted())
print(dayOfWeek[3])
dayOfWeek.remove(at: 0)
print(dayOfWeek)
dayOfWeek.append("New Day 😆")
print(dayOfWeek)



//Bucles
var count = 0
while count < 10{
    print("Boucle \(count)")
    count += 1
}

var count2 = 5
repeat{
    print("At laast once")
}while count2 < 0


for i in 1...10{
    print("Boucle \(i)")
}

for i in dayOfWeek{
    print(i)
}
        
for day in dayOfWeek{
    if day == "Thrusday"{
        print("Its Thursday")
        break
    }else{
        print("Its not Thursday")
    }
}

for day in dayOfWeek{
    if day == "Thrusday"{
        print("Its Thursday")
        break
    }else{
        print("Its not Thursday")
    }
}

for day in dayOfWeek{
    if day == "Thrusday"{
        print("-----------")
        break
    }else{
        print("xxxxxxxxxx")
        continue
    }
}



//Exercise 3
//
func getNumberMultiply(_ number: Int){
    for i in 1...10{
        print("\(i) * \(number) = \(i*number)")
    }
}
getNumberMultiply(4)

var totalSum: Int = 0
for i in 1...100{
    if i % 2 == 0{
        totalSum += i
    }
}
print(totalSum)

var totalSumContinue: Int = 0
for i in 1...100{
    if i % 2 == 0{
        continue
    }
    totalSum += i
}
print(totalSum)

//Exercise 9
func vowesInWord(_ word: String){
    if word.contains("a") || word.contains("e") || word.contains("i") || word.contains("o") || word.contains("u"){
        print("The word contains a vowel")
    }else{
        print("The word does not contain a vowel")
    }
}

func vowelCounter(_ text: String){
    var totalVowels: Int = 0
    for character in text{
        switch character.lowercased(){
        case "a", "e", "i", "o", "u": totalVowels += 1
        default: continue
        }
    }
    print("\(text) = \(totalVowels) vowels")
}
vowelCounter("hola")
vowelCounter("Aris")


//Tuplas
var tupla = ("Jeisson", 28, true, "Av 10", "3163551439", 1.71)
print(tupla.0)
print(tupla.2)

//Dictionaries
var dicc:[String: Any] = ["name": "Jeisson", "age": 28, "isStudent": true, "address": "Av 10", "phone": "3163551439", "height": 1.71]
var myDictionaryName: String = dicc["name"] as? String ?? "No name"
print(myDictionaryName)

for (key, value) in dicc{
    print("The key \(key) contein \(value)")
}


//Nullability
var stringReal: String = "String Real Value"
var exampleNil: String? = nil
var people2: String? = nil

print(stringReal)
//print(exampleNil)

func exampleNil(_ text: String){
    
}

/*
 exampleString(people2)
 exampleNil(exampleNil ?? "Example")
 exampleNil(exampleNil!)
 */
 

func exampleNil(_ text: String?){
    if let text = text{
        print(text)
    }else{
        print("No text")
    }
    
    guard let text = text else{
        return
    }
    print(text)
}


//Classes
class Person{
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func sayHello(){
        print("Hello, my name is \(name) and I am \(age) years old")
    }
}

var jeisson: Person = Person(name: "Jeisson", age: 28)
var jose: Person = Person(name: "Jose", age: 29)

jeisson.sayHello()
jose.sayHello()


struct ExampleStruct{
    var name: String
    var age: Int
}
var exampleStruct: ExampleStruct = ExampleStruct(name: "Jeisson", age: 28)
