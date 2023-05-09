import UIKit

// head
// tail
// enqueue
// dequeue

struct Queue<Item> {
    
    var items:[Item] = []
    
    mutating func enqueue(item:Item) {
        items.append(item)
    }
    
    mutating func dequeue()-> Item {
        guard !items.isEmpty else {fatalError("queue is empty")}
        return items.removeFirst()
    }
    
    var head: Item {
        guard let Firstitem = items.first else {fatalError("there is no first index in the items")}
        return Firstitem
    }
    
    var tail:Item {
        guard let Lastitem = items.last else {fatalError("there is no last index in the items")}
        return Lastitem
    }
    
}



extension Queue: CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
                let bottomDivider = "\n-----------\n"

        let QueueElements = items.map({"\($0)"}).reversed().joined(separator: "\n")

                return topDivider + QueueElements + bottomDivider
    }
    
}


var queue = Queue<String>()

queue.enqueue(item: "Dip")
queue.enqueue(item: "Diptha")
queue.enqueue(item: "Devodyuti")

queue.head
queue.tail

queue.dequeue()


print(queue)

