//
//  main.swift
//  Graph
//
//  Created by kimjaeeun on 2017. 9. 13..
//  Copyright © 2017년 kimjaeeun. All rights reserved.
//

import Foundation

class Queue {
    var QArray = [Int]()
    
    func push(value: Int) {
        QArray.append(value)
    }
    
    func pop()->Int {
        return QArray.removeFirst()
    }
    
    func printQ() {
        print(QArray)
    }
}

var queue = Queue()

queue.push(value: 10)
queue.push(value: 15)
queue.push(value: 5)
queue.printQ()

print("popped value:",queue.pop())
print("popped value:",queue.pop())
