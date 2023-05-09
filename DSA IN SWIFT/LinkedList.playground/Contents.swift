import UIKit

class Node<item> {
    var value:item
    var next: Node?
    
    init(value:item) {
        self.value = value
        self.next = nil
    }
}


class Linkedlist<Item> {
    var head : Node<Item>?
    var tail: Node<Item>?
    
    var first: Node<Item>? {
        return head
    }
    
    var last:Node<Item>? {
        return tail
    }
    
    // linked list have some values
    var empty:Bool {
        head == nil
    }
    
    // how many nodes in the link list
    var countNode:Int {
         var currentnode = head
         var count = 0
        while currentnode != nil {
            count += 1
            currentnode = currentnode?.next
        }
        return count
    }
    
    func append(value:Item) {
        let newNode = Node(value:value )
        
        if  let tailNode = tail {
            tailNode.next = newNode
        }
        else {
            head = newNode
        }
        tail = newNode
        
    }
}
