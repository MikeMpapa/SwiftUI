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
