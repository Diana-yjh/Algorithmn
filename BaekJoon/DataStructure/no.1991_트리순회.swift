//
//  no.1991_트리순회.swift
//  Algorithmn
//
//  Created by Yejin Hong on 2021/07/17.
//

import Foundation

public class BinaryNode<Element> {
    public var value: Element
    public var leftChild: BinaryNode?
    public var rightChild: BinaryNode?
    
    public init(value: Element) {
        self.value = value
    }
}
