//
//  FakeRemoteEventProcessor.swift
//

import Foundation

class FakeRemoteEventProcessor: EventProcessor {

    func process(event: Event, completion: @escaping () -> Void) {
        print("-- send event: \(event)")
        completion()
    }
}
