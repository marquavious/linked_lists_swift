//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

class Node<T:Equatable> {
    var value:T? = nil
    var next: Node? = nil
}

class LinkedList<T:Equatable> {
    private var head = Node<T>()
    func insert(value:T){
        let temp = self.head
        let newNode = Node<T>()
        newNode.value = value
        self.head = newNode
        self.head.next = temp
    }
    
    func traverse(){
        var current = self.head
        while current.next != nil && current.value != nil {
            print(current.value!)
            current = current.next!
        }
    }
    
    func delete(target:T){
        var current = Node<T>()
        var previous = Node<T>()
        current = self.head
        while current.next != nil && current.value != nil {
            if current.value == target {
                if previous.value == nil{
                    self.head = current.next!
                } else{
                    previous.next = current.next!
                    current = previous.next!
                }
            } else{
                previous = current
                current = current.next!
            }
        }
    }
    
    func search(target:T) -> Bool {
        var current = Node<T>()
        var found: Bool = false
        while current.next != nil && current.value != nil {
            if current.value == target{
                found = true
                return found
            }
            current = current.next!
        }
        return found
    }
}


var stringList = LinkedList<String>()
stringList.insert(value: "Marq")
stringList.traverse()
stringList.insert(value: "Mahdur")
stringList.traverse()
stringList.insert(value: "Chandan")
stringList.traverse()
stringList.insert(value: "Kadeem")

var intList = LinkedList<Int>()
intList.insert(value: 2)
intList.insert(value: 3)
intList.insert(value: 4)
intList.insert(value: 5)
intList.insert(value: 6)
intList.insert(value: 7)

stringList.traverse()
intList.traverse()














