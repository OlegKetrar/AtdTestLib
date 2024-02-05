//
//  EventProcessorMock.swift
//

import Foundation
import LibExample

class EventProcessorMock: EventProcessor {
    private(set) var process_events: [Event] = []
    private(set) var process_completion: (() -> Void)?
    private(set) var process_callsCount: Int = 0

    func process(event: Event, completion: @escaping () -> Void) {
        process_callsCount += 1
        process_events.append(event)
        process_completion = completion
    }
}
