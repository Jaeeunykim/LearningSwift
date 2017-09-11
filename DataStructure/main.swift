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
