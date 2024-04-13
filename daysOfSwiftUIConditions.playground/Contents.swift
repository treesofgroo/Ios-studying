import Cocoa


// if
var age = 20

if age >= 20 && age <= 29 {
    print("You're twenties!")
}


var name1 = "apple"
var name2 = "banana"

if name1 > name2 {
    print("\(name2) -> \(name1)")
}
if name1 < name2 {
    print("\(name1) -> \(name2)")
}


var members = [5, 6, 7]
members.append(8)

if members.count > 3 {
    members.remove(at: 0)
}


if !members.isEmpty {
    print("Members are here!")
}


// else if, else
enum Color {
    case red, green, yellow
}

var color = Color.green

if color == .red {
    print("Don't go now")
} else if color == .yellow {
    print("Slow your pace")
} else {
    print("You may go")
}


// &&, ||
var isWet = true
var isCold = true
var isSunny = false

if isCold && isWet {
    print("It can be winter!")
    if !isSunny {
        print("And it's cold!")
    }
}
