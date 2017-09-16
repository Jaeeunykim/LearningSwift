//
//  main.swift
//  Btree
//
//  Created by kimjaeeun on 2017. 9. 13..
//  Copyright © 2017년 kimjaeeun. All rights reserved.
//

import Foundation

class Node {
    var value: Int
    var height: Int
    var left, right :Node?
    
    init(value:Int) {
        self.value = value
        self.height = 0
        self.left = nil
        self.right = nil
    }
}

class AVL {
    var root : Node?
    
//addNode method
    func addNode(node: Node)->Node {
        if root == nil {
            root = node
        }
        
    //add Node
        var curr = root
        
        while curr != nil {
            if (curr?.value)! > node.value {
                if curr?.left == nil {
                    curr?.left = node
                    break
                }
                curr = curr?.left
            }else {
                if curr?.right == nil {
                    curr?.right = node
                    break
                }
                curr = curr?.right
       
            }
        }//while loop
        
        //node height update
        curr?.height = 1 + ((curr?.left?.height)! > (curr?.right?.height)! ? curr?.left?.height : curr?.right?.height)!
        return AdjustBalance(curr: curr!, node: node)
    }
    
    func RightRotate(curr:Node)->Node {

        var a = curr.left
        var aRight = a?.right
        
        a?.right = curr
        curr.left = aRight
        
        a?.height = 1 + ((a?.left?.height)! > (a?.right?.height)! ? a?.left?.height : a?.right?.height)!
        curr.height = 1 + ((curr.left?.height)! > (curr.right?.height)! ? curr.left?.height : curr.right?.height)!
        
        return a!

    }

    func LeftRotate(curr:Node )->Node {
       
        var a = curr.right
        var aLeft = a?.left
        
        a?.left = curr
        curr.right = aLeft
        
        a?.height = 1 + ((a?.left?.height)! > (a?.right?.height)! ? a?.left?.height : a?.right?.height)!
        curr.height = 1 + ((curr.left?.height)! > (curr.right?.height)! ? curr.left?.height : curr.right?.height)!
        
        return a!

    }
    
    func AdjustBalance(curr:Node, node:Node)->Node {
        var BalFactor = (curr.left?.height)! - (curr.right?.height)!
    //left left case
        if BalFactor > 1 && (curr.left?.value)! > (node.value) {
            
            //Right Rotate
        return RightRotate(curr: curr)
        }
        
    //Right Right Case
        if BalFactor < -1 && (curr.right?.value)! < (node.value) {
            
            //Left Rotate
        return LeftRotate(curr: curr)
            
        }
    //Left Right case 
        if BalFactor > 1 && (curr.left?.value)! < (node.value) {
            
            //Right Rotate first
            curr.left = LeftRotate(curr: curr)
        
            //After that Left Rotate
            return RightRotate(curr: curr)
        }
    //Right Left Case
        if BalFactor < -1 && (curr.right?.value)! < (node.value) {
            curr.right = RightRotate(curr: curr)
            return LeftRotate(curr: curr)
        }
        return curr
    }

    func preOrder(root:Node) {
        var temp = root
        
        if(temp != nil){
            print(temp.value)
            preOrder(root: temp.left!)
            preOrder(root: temp.right!)
        }
    }
    
}//Class

var Tree = AVL()
var firstNode = Node(value: 10)
var secondeNode = Node(value: 4)
var thirdNode = Node(value: 3)

Tree.addNode(node: firstNode)
Tree.addNode(node: secondeNode)
Tree.addNode(node: thirdNode)



