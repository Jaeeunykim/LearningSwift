//
//  main.swift
//  tree
//
//  Created by kimjaeeun on 2017. 9. 12..
//  Copyright © 2017년 kimjaeeun. All rights reserved.
//

import Foundation

class Node{
    var value: Int
    var left, right : Node?
    init(value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}


class Btree{
    var root : Node?
    func printPreOrder(){
        preOrder(node: root)
    }
    
    func preOrder(node: Node?){
        if node == nil {
            return
        }
        print(node?.value)
        preOrder(node: node?.left)
        preOrder(node: node?.right)
    }
    
    func addNode(node:Node?){
        if root == nil{
            root = node
            return
        }
        var curr = root
        while curr != nil {
            if (curr?.value)! > (node?.value)!{
                if curr?.left == nil {
                    curr?.left = node
                    break
                }
                curr = curr?.left
            }else if (curr?.value)! < (node?.value)!{
                if curr?.right == nil {
                    curr?.right = node
                    break
                }
                curr = curr?.right
            }
        }
        return
    }
    init() {
        root = nil
        
    }
}

var Tree = Btree()

var firstNode = Node(value: 10)

var secondNode = Node(value: 5)

Tree.addNode(node: firstNode)
Tree.addNode(node: secondNode)

print("Hello")

Tree.printPreOrder()
