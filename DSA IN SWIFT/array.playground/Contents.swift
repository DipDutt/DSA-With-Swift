import UIKit

// adding element in array

var numbers = [1, 2, 3, 4, 5]
numbers.insert(100, at: 3)
numbers.insert(200, at: numbers.endIndex) // O(n)

var numbers2 = [1, 2, 3, 4, 5]
numbers2.insert(contentsOf: 100...103, at: 3)
print(numbers2) // O(n + m)


var array = [10, 20, 30, 40, 50]
//array.replaceSubrange(1...3, with: repeatElement(2, count: 3)) // O(n + m)
array.replaceSubrange(1...3, with:2...4)

// remove arrays

var measurements: [Double] = [1.1, 1.5, 2.9, 1.2, 1.5, 1.3, 1.2]
let removed = measurements.remove(at: 2)
print(measurements) // O(n)

var bugs = ["Aphid", "Bumblebee", "Cicada", "Damselfly", "Earwig"]
bugs.removeFirst()
print(bugs)

var bugs2 = ["Aphid", "Bumblebee", "Cicada", "Damselfly", "Earwig"]
bugs2.removeFirst(2)
print(bugs2)

var foods = ["Biriyani", "Kichuri", "Pizza", "Burger"]
foods.removeSubrange(2...3)
print(foods)

var foods2 = ["Biriyani", "Kichuri", "Pizza", "Burger"]
foods2.removeAll()
print(foods2)

var phrase = "The rain in Spain stays mainly in the plain."

let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
phrase.removeAll(where: { vowels.contains($0) })


// find array

var Anumbers:[Int] = [10,20,30,50,70]
Anumbers.contains(where: {$0 > 100})


let names = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
names.allSatisfy({$0.count >= 5})


let numbers1 = [3, 7, 4, -2, 9, -1, 10, 1]
if let firstNegative = numbers1.first(where: { $0 < 0 }) {
    print("The first negative number is \(firstNegative).")
}

let Numbers = [3, 7, 4, -2, 9, -6, 10, 1]
if let firstNegative = Numbers.last(where: { $0 < 0 }) {
    print("The first negative number is \(firstNegative).")
}


var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let i = students.firstIndex(of: "Ivy") {
    students[i] = "Jonathan Ivy"
}
print(students)

var Students = ["Beni", "Ivy", "Jordell", "Ben", "Maxime"]
if let i = Students.lastIndex(of: "Ben") {
    Students[i] = "Benjamin"
}
print(Students)


let students2 = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
if let i = students2.firstIndex(where: { $0.hasPrefix("K") }) {
    print("\(students2[i]) starts with K")
}

let students3 = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
if let i = students3.lastIndex(where: { $0.hasPrefix("K") }) {
    print("\(students2[i]) starts with K")
}


let hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
if let greatestHue = hues.max(by: { a, b in a.value < b.value }) {
    print(greatestHue)
}


let hues2 = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
if let greatestHue2 = hues2.min(by: { a, b in a.value < b.value }) {
    print(greatestHue2)
}

// convert array

let arrayNumber:[Int] = [1,2,3,4]

var doubleThenumber = arrayNumber.map { (number) in
    number * 2
}
print(doubleThenumber)


let pairs = [[1,2],[3,4],[5,6],[7,8]]

var sumindex = pairs.map {$0[0] + $0[1]}
 
print(sumindex)

let Stringvalues = ["1", "Two", "Three", "4"]

var intValue = Stringvalues.compactMap {Int($0)}
print(intValue)


let pairarray = [[1,2],[3,4],[5,6],[7,8]]

let singleArray = pairarray.flatMap {$0}

print(singleArray)

let arraypair = [[1,2],[3,4],[5,6],[7,8]]

let single = arraypair.flatMap{$0}.reduce(0, +)

print(single)


let Numbersa = [1, 2, 3, 4, 5]

let sum = Numbersa.reduce(0) { x, y in
     x + y
}


let letters = "abracadabra"
let letterCount = letters.reduce(into: [:]) { counts, letter in
    counts[letter, default: 0] += 1
}

print(letterCount)

// re-order array


var names2 = ["Alejandro", "Camila", "Diego", "Luciana", "Luis", "Sofía"]
names2.shuffled()

var numberspartion = [30, 40, 20, 30, 30, 60, 10]
let partion = numberspartion.partition(by: {$0 > 30})
print(numberspartion)


// selecting arrays


let totalNumbers = [1,2,3,4]
totalNumbers.prefix(3)
totalNumbers.prefix(5)

let totalNumbers2 = [1,2,3,4]
if let i = totalNumbers2.firstIndex(of: 4) {
    print(totalNumbers2.prefix(through:i ))
}

let totalNumbers3 = [1,2,3,4]
if let i = totalNumbers3.firstIndex(of: 4) {
    print(totalNumbers3.prefix(upTo: i))
}


let totalNumbers4 = [1,2,3,4]
totalNumbers4.suffix(3)

let totalnumbers = [10, 20,30, 40, 50]
if let i = totalnumbers.firstIndex(of: 30) {
    print(totalnumbers.suffix(from: i))
}


// comparing arrrays

let clothesnamesdeshi = ["shari", "punjabi", "lungi"]
let clothesnamesbideshi = ["Jeans", "top", "T shirt","lehenga"]

let comparetwo = clothesnamesbideshi.elementsEqual(clothesnamesdeshi)


let loop = 1...3
let loop2 = 1...10

let isstart = loop2.starts(with: loop)

let firstArray = [1,2,3,5]
let secondArray = [1,2,5,5]

let lexiograph = firstArray.lexicographicallyPrecedes(secondArray)
