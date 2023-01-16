//
//  DomainHandler.swift
//  ChainOfResponsibility
//
//  Created by Choiwansik on 2023/01/16.
//

import Foundation

internal class DomainHandler: Handler {

    internal func process(url: URL) {
        if let host = url.host {
            print("Domain: \(host)")
        } else {
            print("No Domain")
        }
    }

    internal var nextHandler: Handler?

}
