import UIKit

//var greeting = "Hello, playground"

class Node<Item> {
    let value:Item
    var next: Node?
    
    //Inititializers
    init(value: Item) {
        self.value = value
        self.next = nil
    }
}


class LinkedList<Item>{
    
    
    var head:Node<Item>?
    private var tail:Node<Item>?
    
    //get properties for first and last
    var first: Node<Item>? {
        return head
    }
    
    var last: Node<Item>? {
        return tail
    }
    
    //Show is LinkedList is Empty
    var isEmpty:Bool {
        head == nil
    }
    
    //Count to show how many linkeditem
    
}
