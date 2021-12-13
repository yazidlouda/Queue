//
//  ViewController.swift
//  queue
//
//  Created by Home on 12/13/21.
//

import UIKit

class ViewController: UIViewController {
    struct Queue {
        private var items: [String] = []
        
        func peek() -> String {
            guard let topElement = items.first else { fatalError("Empty Queue") }
            return topElement
        }
        
        mutating func pop() -> String {
            return items.removeLast()
        }
      
        mutating func push(_ element: String) {
            items.insert(element, at: 0)
        }
    }
    var myQueue = Queue()
    override func viewDidLoad() {
        super.viewDidLoad()
        myQueue.push("first")
        myQueue.push("second")
        myQueue.push("third")
        myQueue.pop() // remove
        // Do any additional setup after loading the view.
    }


}

