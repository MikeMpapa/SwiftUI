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

