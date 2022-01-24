//
//  ViewController.swift
//  Patterns-Iterator
//
//  Created by Ruslan on 23.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fifthElement =  LinkedListNode.value(element: 5, next: .end)
        let fourthElement = LinkedListNode.value(element: 4, next: fifthElement)
        let thirdElement =  LinkedListNode.value(element: 3, next: fourthElement)
        let secondElement = LinkedListNode.value(element: 2, next: thirdElement)
        let firstElement =  LinkedListNode.value(element: 1, next: secondElement)
        
        let list = LinkedList(head: firstElement)
        
        for i in list {
            print(i)
        }
    }
}

