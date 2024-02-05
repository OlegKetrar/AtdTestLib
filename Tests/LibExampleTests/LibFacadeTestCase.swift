//
//  LibFacadeTestCase.swift
//

import XCTest
import LibExample

final class LibFacadeTestCase: XCTestCase {

    func test_addEvent_callsProcess() throws {
        let processor = EventProcessorMock()
        let sut = LibFacade(processor: processor)
        XCTAssertEqual(processor.process_callsCount, 0)
        XCTAssertEqual(processor.process_events, [])

        sut.addEvent("launch")

        XCTAssertEqual(processor.process_callsCount, 1)
        XCTAssertEqual(processor.process_events, ["launch"])
    }

    func test_addEvent_callTwice_callsProcessTwice() throws {
        let processor = EventProcessorMock()
        let sut = LibFacade(processor: processor)
        XCTAssertEqual(processor.process_callsCount, 0)
        XCTAssertEqual(processor.process_events, [])

        sut.addEvent("launch")
        sut.addEvent("login")

        XCTAssertEqual(processor.process_callsCount, 2)
        XCTAssertEqual(processor.process_events, ["launch", "login"])
    }
}
