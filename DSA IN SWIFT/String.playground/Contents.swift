import UIKit

var greeting = "Hello, playground"

greeting.insert("!", at: greeting.endIndex)
greeting.insert(contentsOf: "Dip", at: greeting.startIndex)

// remove
if let i = greeting.firstIndex(of: "D") {
    greeting.remove(at: i)
}
 print(greeting)

greeting.removeAll()

var teamName = "Delhicapitals"
teamName.removeLast(8)
var teamName2 = "kolkataknightRiders"
teamName2.removeFirst(4)


var fooditems = ["Chicken Tikka Masala","Chicken Roast","Chicken Biriyani", "Mutton Resela","Mutton Curry", "Mutton Biriyani"]
fooditems.removeSubrange(0...2)

var language = "Swift,Programming"
let range = language.index(language.endIndex, offsetBy: -11)..<language.endIndex
language.removeSubrange(range)
language.dropFirst()
language.dropLast()

// compare strings

var language1 = "Swift Programming"
var language2 = "Swift Programming"

language1.elementsEqual(language2)
language2.starts(with: language1)


// getting strings

var movieName = "Krrish3"

if let i = movieName.lastIndex(of: "K") {
    let name = movieName[i..<movieName.index(before: movieName.endIndex)]
}

movieName.prefix(3)
movieName.suffix(4)

let moviename = "ironman3ageofultron"

if let i = moviename.firstIndex(of: "3") {
    let name = moviename.suffix(from: i )
}

let moviename3 = "Avengersageofultron"

if let i = moviename3.firstIndex(of: "a") {
    let name = moviename3.prefix(upTo: i)
}
