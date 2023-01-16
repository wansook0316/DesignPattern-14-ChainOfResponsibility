//
//  PortHandler.swift
//  ChainOfResponsibility
//
//  Created by Choiwansik on 2023/01/16.
//

import Foundation

internal class PortHandler: Handler {

    internal func process(url: URL) {
        if let port = url.port {
            print("Port: \(port)")
        } else {
            print("No Port")
        }
    }

    internal var nextHandler: Handler?

}
