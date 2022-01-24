//
//  LinkedList.swift
//  Patterns-Iterator
//
//  Created by Ruslan on 24.01.2022.
//

import Foundation

// for organizing elements of data structure
indirect enum LinkedListNode<T> {
    case value(element: T, next: LinkedListNode<T>)
    case end
}

// data structure with specifying the first element
struct LinkedList<T> {
    var head: LinkedListNode<T>
    init(head: LinkedListNode<T>) {
        self.head = head
    }
}

// iterator pattern for Sequence protocol comformance
struct LinkedListIterator<T>: IteratorProtocol {
    var current: LinkedListNode<T>
    
    mutating func next() -> T? {
        switch current {
        case let .value(element, next):
            current = next
            return element
        case .end:
            return nil
        }
    }
}

// for sequential, iterated access to data structure elements
extension LinkedList: Sequence {
    func makeIterator() -> some IteratorProtocol {
        LinkedListIterator(current: head)
    }
}
