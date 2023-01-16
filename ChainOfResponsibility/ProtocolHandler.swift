//
//  ProtocolHandler.swift
//  ChainOfResponsibility
//
//  Created by Choiwansik on 2023/01/16.
//

import Foundation

internal class ProtocolHandler: Handler {

    internal func process(url: URL) {
        if let scheme = url.scheme {
            print("Protocol: \(scheme)")
        } else {
            print("No Protocol")
        }
    }

    internal var nextHandler: Handler?

}
