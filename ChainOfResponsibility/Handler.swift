//
//  Handler.swift
//  ChainOfResponsibility
//
//  Created by Choiwansik on 2023/01/16.
//

import Foundation

internal protocol Handler {

    var nextHandler: Handler? { get set }

    mutating func setNext(handler: Handler) -> Handler

    func run(url: URL)

    func process(url: URL)

}

extension Handler {

    internal mutating func setNext(handler: Handler) -> Handler {
        self.nextHandler = handler
        return handler
    }

    internal func run(url: URL) {
        self.process(url: url)

        if let nextHandler {
            nextHandler.run(url: url)
        }
    }

}


