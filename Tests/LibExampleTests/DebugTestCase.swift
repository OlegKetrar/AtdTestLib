//
//  DebugTestCase.swift
//

import XCTest
import LibExample

class DebugTestCase: XCTestCase {

    func test() {
        print("------- start")
        defer { print("------- end") }

        let sut = LibFacade.make()
        sut.addEvent("launch")
        sut.addEvent("login")
    }
}
