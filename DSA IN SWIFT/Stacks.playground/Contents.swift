import UIKit

// push
// peak
// pop

struct Stacks<T> {
    private var items:[T] = []

    

    mutating func push(_ element:T) {
        return items.append(element)
    }
    
    func peek()->T{
        guard let topElement = items.first else{ fatalError("stack is empty")}
        return topElement
    }

    mutating func pop()->T {
        return items.removeLast()
    }
}


extension Stacks: CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
                let bottomDivider = "\n-----------\n"

        let stackElements = items.map({"\($0)"}).joined(separator: "\n")

                return topDivider + stackElements + bottomDivider
    }
}



var nameStack = Stacks<Any>()
nameStack.push("Dip")
nameStack.push("Diptha")
nameStack.push("Devodyuti")

nameStack.peek()
nameStack.pop()

print(nameStack)
