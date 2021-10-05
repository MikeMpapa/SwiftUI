import UIKit

var greeting = "Hello, playground"
greeting = "Byeeeeee"
var age = 38
var population = 8_000_000
//greeting = 90 --> invalid, type missmatch

var multilinestr = """
    This goes
    over multiple
    lines
    """

var multilinestrCor = """
    This goes \
    over multiple \
    lines
    """

var pi = 3.14 //double vaar
var isBoolean = true // boolean var


// Complex Strings
var score = 85
var complexStr = "Your score is \(score)" //string interpolations
var moreComplexStr = "You are baad because: \(complexStr)"


//Constants
let taylor = "swift"
//taylor = "john" //invalid operation



//Type Annotations
let str = "Automaticly recognized aas string"
let year: Int = 1989 //specify as int
let yearst: String = "1989" //specify as string
let height: Double = 1.78 //specify as double
let taylorRocks: Bool = true //specify as boolean


//Arrays
let couple1 = "Michalis Papakostas"
let couple2 = "Christiana Kapatsori"
let pet1 = "Max Kasasioris"
let pet2 = "Kokkinos"
let pet3 = "Akridas"
let spitiko = [couple1,couple2,pet1,pet2,pet3]
spitiko[0]
//spitiko[5] --> error
let arithmos = 100
// let spitiko = [couple1,couple2,pet1,pet2,pet3,arithmos] --> error
let spitiko2: [String] = [couple1,couple2,pet1,pet2,pet3] // Array with value declaration

//Sets --> no ordeer and only unique appearances
let set_spitiko = Set(spitiko)
let random_set = Set([1,2,1,3,2])


//Tuples --> Fixed in size
var tuple_example = (pet:"Max",lastname:"Kasasioris")
tuple_example.0
tuple_example.pet
tuple_example.lastname = "Korkotzelos"
// tuple_example.lastname = 5 --> error - must be string

//COMPARISON: Arrays VS Sets VS Tuples
//If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:

let set = Set(["aardvark", "astronaut", "azalea"])
//If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

var pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
//Arrays are by far the most common of the three types.
pythons.append("Russel")


//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
    "Skatas":0
]

heights["Skatas"]

let dict_example:[Int:String] = [0:"John", 25:"Boss"]//Dict with value identifier
dict_example[0]


let ice_cream_price = ["Chocolate":2,"Vanilla":2,"Strawberry":2.5]
ice_cream_price["Chocolate"]
ice_cream_price["Mango",default:-1]
// ice_cream_price["Mango",default:"Flavor not available"] --> error - value has to be Double here


// Creating an empty collection

// Empty Dictionary
var teams = [String: String]()
teams["Paul"] = "Red"

//Empty Array
var results = [Int]()

//Empty Sets
var words = Set<String>()
var numbers = Set<Int>()

// Empty arrays and Dictionaries using the standard Swift declaaration
var scores = Dictionary<String, Int>()
var results2 = Array<Int>()


// Enumeraations --> Define a set of standard vaalues and we can assign them insted of strings
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Results{
    case success
    case failure
    case kouraditses

}

let result4 =  Results.failure
let result5 = Results.kouraditses


enum Activities{
    case running(pace:Int)
    case sleeping(hours:Double)
    case discussing(topic:String)
}

let isDoing = Activities.discussing(topic: "football")

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
let planetValue = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus = 3
    case earth = 20
    case mars = 9
}

let planetValue2 = Planet2(rawValue: 20)
let planetValue3 = Planet2(rawValue: 2)

enum Planet3: String {
    case mercury = "Jeff"
    case venus = "Van"
    case earth = "Gandy"
}

let planetValue4 = Planet3(rawValue: "Gandy")

/*
 ERROR - Canot have Raw Values and AArguments as well
 
 enum Planet3: String {
     case mercury(color:String) = "Jeff"
 }
 
 */

// Mathematical Operators

let x = 3
let y = 12
var z = x+y
z = x-y
z = x*y
z = y/x
z = x/y
z = y%x // reamining
let k = 5
z = y%k

let dogname = "Mats"
let doglastname = "Kasasioris"
let dogfamilyname = dogname+doglastname

let names = ["Mikes","Tsilets"]
let lastnames = ["Papakositasa","Kapatsorilets"]
let familynames = names+lastnames

z = 5
z += 1 //in place value assignment
z -= 1
z *= 2
z /= 2


var stringVar = "I am "
stringVar += "pretty"


// Comparison Operators
x > y
x <= y
x == 3
x != y
"A">"B"
"A"<"B"
"Mike" < "Papa" // Ordering the two words alphabetically - the one that comes later is considered "bigger"


//Conditions
let card1 = 12
let card2 = 10

if card1+card2==21{
    print("Blackjack!")
}
else if card1+card2 <= 21{
    print("Keep trying!")
}
else{
    print("Sorry you lost!!")
}


// Logical Operators
let age1 = 17
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//Ternary operator - Combining two conditions in one phrase
let areEqual = ( card1==card2 ? "Yes! :)" : "No! :(")
print(areEqual)


// Switch-Case conditioning

let color = "blue"

switch color {
case "blue":
    print("DabudiDabudai")
    fallthrough// executes the code in the casae right bellow as well
case "red":
    print("It wasn't red")
default:
    print("Invalid color!")
}

// Range operators
// x..<y "Up to not including y"
// x...y "Up to including y"

let range = 0...10
range.lowerBound

let score2 = 50

switch score2 {
case 0...50:
    print("kakos")
case 51 ..< 100 :
    print("kalos")
default:
    print("teleios")
}

//same using if and compaarison operators
if score2 <= 50 {
    print("Kakos")
}
else if score2 < 100{
    print("Kalos")
}
else{
    print("Teleios")
}

//FOR Lopps

let count1 = 0...10

for i in count1{
    print("The number is: \(i)")
}


let values = ["1","Argyro","Papatrexas"]

for s in values{
    print("The string is: \(s)")
}

for _ in 1...5{
    print("Eisai oraio mwro")
}

// WHILE Loops
var count2 = 0
while count2<10{
    count2+=1
    print(count2)
}
print("Finished!")


// REPEAT Loop

count2=0
repeat{
    count2+=1
    print(count2)
}while count2 != 10
print("Finished AAagain!")


//Exiting loops

for i in count1{
  print(i)
  if i == 5{
      print("Out!")
      break
  }
}


//Exiting multiple loops using LOOP-LAABELING

outerLoop: for i in 3...5{
    for j in 0...2{
        print("Max")
        
        if j == 1{
            break outerLoop
        }
    }
    print("\n\(i)")
}
print("\nDouble Break ")

outerouterLoop: for k in ["Stavros","Kosma","Petris"]{
    outerLoop: for i in 3...5{
        for j in 0...2{
            print("Max")
            if j == 1{
                break outerLoop
            }
        }
        print("\n\(i)")
    }
    print(k)
}

print("\nSecond Double Break")

outerouterLoop: for k in ["Stavros","Kosma","Petris"]{
    outerLoop: for i in 3...5{
        for j in 0...2{
            print("Max")
            if j == 1{
                break outerouterLoop
            }
        }
        print("\n\(i)")
    }
    print(k)
}


//Skipping Loops
for c in 1...10{
    if c%2 == 1 {continue}
    else{print(c)}
}

//Infinite Loops - Common in mobile apps

count2=0
while true {
    print("waiting")
    if count2 == 4{
        break
    }
    count2+=1
}



// Functions

func myPrint(){
    let message = """
It's my Life!
And it's now or never!
"""
    print(message)
}
myPrint()

// Arguments (Arguments are constant!!)
func Square(number: Int){
    print(number*number)
}

Square(number: 8)
print("In func print")

// Rerurn value
func NewSquare(number: Int) -> Int{
    let result = number*number
    return result
}

let squareResult = NewSquare(number: 8)
print(squareResult)
print("Out func print")


//Return multiple values
func NewSquare2(number: Int) -> (String,Int){
    let result = number*number
    let text = "Returned multiple values"
    return (text,result)
}
let squareResult2 = NewSquare2(number: 8)
print(squareResult2.0,squareResult2.1)

// Parameter Labels
func SayHello(to name: String){
    print("Hello \(name)!")
}
SayHello(to: "Michalis")


// Ommiting Parameter Labels
func SayHello2(_ name:String){
    print("Hello \(name)!")
}

SayHello2("Michalis")


//Default Values

func Greet(to name: String,greet: Bool=true){
    if greet {
        print("\(name)??? NOOOOOO")
    }
    else{
        print("\(name)???YESSSSSS")
    }
}

Greet(to: "Michalis")
Greet(to: "Tsilets", greet: false)


// Size indipendent attribute

func NewSquare3 (numbers: Int ...){
    for i in numbers{
        print(i,"Squared:",i*i)
    }
}

NewSquare3(numbers: 1,2,3,4)


// Throwing Error Funtions - Try/Catch

enum ErrorMessage: Error{
    case obvious_password
}

func Password(code: String) throws -> String{
    guard code != "123" && code != "password" else{
        throw ErrorMessage.obvious_password
    }
    return "Password Saved"
}


do{
    let password_feedback = try Password(code: "APOXEREDHS")
    print(password_feedback)
}
catch{
    print("Password too obvious. Try another one.")
}
//----------
do{
    let password_feedback = try Password(code: "123")
    print(password_feedback)
}
catch{
    print("Password too obvious. Try another one.")
}

// InOut Parameters


func DoubleValue(number: inout Int){
    number*=2
}


var num = 10
print(num)
DoubleValue(number: &num)
print(num)


// Closures - Functions as variables

let activity = {
    print("Driving!!!")
}

activity()
print("---------")
// Closures with Arguments - you don’t use parameter labels when running closures
let activity2 = { (vehicle: String) in
    print("I am driving my \(vehicle)!!!")
}

activity2("motorcycle")
print("---------")
// Closures with Return
let activity3 = { (vehicle: String) -> String in
    let the_activity = ("I am driving my \(vehicle)!!!")
    return the_activity
}

let returnedActivity = activity3("truck")
print(returnedActivity)

print("---------")
//Closures as paarameters

func traveling(action: () -> Void){
    print("Getting Reaady")
    action()
    print("Arrived")
}

traveling(action: activity)

//Trailing closure syntax - Use a closure as the last parameter of a function
print("---------")
traveling {
    activity2("elephant")
}
print("---------")

func goCamping(then action: () -> Void) {
    print("We're going camping!")
    action()
}
goCamping {
    print("Sing songs")
    print("Put up tent")
    print("Attempt to sleep")
    activity2("elephant")
}
print("---------")

// Closures as function arguments that accept parameters

func traveling2(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
traveling2 { (place: String) in
    print("I'm going to \(place) in my car")
}

print("---------")
// Closures as function arguments that accept parameters and return values

let cooking_food = { (ingredient: String)->String in
    let str = ("Today we use \(ingredient)")
    return str
}

func cook(food:(String)->String){
    print("I prepare food")
    let steps = food("cucamber")
    print(steps)
    print("Food is redy!!!")
}


cook{ (veggie: String) -> String in
    cooking_food("\(veggie) and we cook in the oven")
}

print("---------")
// Aadvanced naming of the above
cook{
    cooking_food("\($0) and we cook in the oven")
}
print("---------")


func getDirections(to destination: String, then travel: ([String]) -> Void) {
    let directions = [
        "Go straight ahead",
        "Turn left onto Station Road",
        "Turn right onto High Street",
        "You have arrived at \(destination)"
    ]
    travel(directions)
}
getDirections(to: "London") { (directions: [String]) in
    print("I'm getting my car.")
    for direction in directions {
        print(direction)
    }
}
print("---------")


func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}
manipulate(numbers: [1, 2, 3]) { number in
    return number * number
}

print("---------")


func encrypt(password: String, using algorithm: (String) -> String) {
    print("Encrypting password...")
    let result = algorithm(password)
    print("The result is \(result)")
}
encrypt(password: "t4ylor") { (password: String) in
    print("Using top secret encryption!")
    return "SECRET" + password + "SECRET"
}

print("---------")

func scoreToGrade(score: Int, gradeMapping: (Int) -> String) {
    print("Your score was \(score)%.")
    let result = gradeMapping(score)
    print("That's a \(result).")

}
scoreToGrade(score: 88) { (grade: Int) in
    if grade < 85 {
        return "Fail"
    }
    return "Pass"

}

// Closures with multiple parameters
print("---------")

func traveling3(action:(String,Int)->String){
    print("i am leving")
    let returned = action("spaceship",80)
    print(returned)
    print("arrived")
}


traveling3 { (vehicle: String, speed: Int) in
    return ("I am moving in a \(vehicle) at \(speed) km/h")
}

// Function that returns a closure
print("---------")
func traveling4()->(String)->String{
    return{(vehicle: String) in
        let travel_sentence = "I am a \(vehicle)"
        return travel_sentence
    }
}

let closureResults = traveling4()
print(closureResults("car"))
print(closureResults("bus"))

// Closure Capturing
print("---------")
func traveling5()->(String)->String{
    var counter = 0
    return{(vehicle: String) in
        let travel_sentence = " \(counter) I am a \(vehicle)"
        counter+=1
        return travel_sentence
    }
}

let closureResults2 = traveling5()
print(closureResults2("car"))
print(closureResults2("bus"))
print(closureResults2("bicycle"))

let closureResults3 = traveling5()
print(closureResults3("bicycle"))



// Structs
print("---------")

struct Sport{
    var name:String = "Tipota" //default value == tipotaa
}

var tennis = Sport()
print(tennis.name)
tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Tennis Sport"
print(tennis.name)


// Structs with computed properties
print("---------")
struct Sport2{
    var name:String
    var isOlympic:Bool
    var winsMedal: String{
        if isOlympic{
            return "You can win a medal"
        }
        else{
            return "No medal for you"
        }
    }
}

var hockey = Sport2(name: "Hockey",isOlympic: false)
print(hockey.winsMedal)

var soccer = Sport2(name: "Soccer",isOlympic: true)
print(soccer.winsMedal)

// Structs with property observers
print("---------")

struct Progress{
    var task: String
    var amount: Int{
        didSet{
            print("\(task) is now \(amount)% completed")
        }
    }
}

var progressBar = Progress(task: "Instalation", amount: 0)
progressBar.amount=30
progressBar.amount=60
progressBar.amount=100

print("---------")
// Struct methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 10)
print("Taxes for \(london.population) people are \(london.collectTaxes())")

print("---------")
//Mutating methods --> Methods that specificaally defined to change the value of a struct-property
struct Person{
    var name: String
    
    mutating func makeanonymous(){
        name = "Anonymous"
    }
}

var user = Person(name: "alex")
print(user.name)
user.makeanonymous()
print(user.name)


print("---------")
// The 'String' struct
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
print(string.lowercased())

print("---------")
// The 'String' struct
var array = ["John","Bon"]
print(array.count)
print(array.sorted())
array.append("Jovi")
print(array)
array.shuffle()
print(array)
array.remove(at: 0)
print(array)
print(array.contains("Jovi"))
print(array.min())
print(array.max())
print(array.firstIndex(of: "John"))
print(array.firstIndex(of: "Jovi"))

