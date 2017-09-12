//
//  main.swift
//  DataStructure
//
//  Created by kimjaeeun on 2017. 9. 11..
//  Copyright © 2017년 kimjaeeun. All rights reserved.
//

import Foundation

class Node {
    var value: Int = 0
    var next: Node?
    init(value: Int) {
        self.value = value
        next = nil
    }
}



var top:Node?

func push(item: Int){
    var node = Node(value: item)
    
    if(top == nil)
    {
        top = node
    }
    else{
        node.next = top
        top = node
    }
}

func printStack(top: Node?)
{
    if top == nil{
        return
    }
    var cur = top
    while cur != nil
    {
        print(cur?.value)
        cur = cur?.next
    }
}

func pop(){
    if top == nil
    {
        print("This stack is empty!")
    }
    var temp = top
    print("\nPopped value",top?.value,"\n")
    top = temp?.next
}



push(item: 6)
push(item: 9)
push(item: 10)
push(item: 1)
printStack(top: top)
pop()
printStack(top: top)


struct Stack<Element>{
    var items = [Element]()
    mutating func push(_ item: Element){
        
    }
}




struct Stacks<Jaeeuny>{
    var items = [Jaeeuny]()
     mutating func push(_ item: Jaeeuny){
        items.append(item)
    }
    mutating func pop()->Jaeeuny{
        return items.removeLast()
    }
}

var eStack = Stacks<Character>()
var iStack = Stacks<Int>()
var dStack = Stacks<Double>()

eStack.push("a")
eStack.push("b")
eStack.push("c")
print(eStack.items)

struct Queue<Element>{
    var items = [Element]()
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func pop()->Element{
        return items.removeFirst()
    }
}

var iQueue = Queue<Int>()

iQueue.push(5)
iQueue.push(6)
iQueue.push(10)
print(iQueue)
print("\n",iQueue.items)

print("\nPopped value",iQueue.pop(),"\n")
print(iQueue.items)

func binarySearch<T: Comparable>(a: [T], key: T)->Int?{
    var
}
