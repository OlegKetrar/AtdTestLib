//
//  EventProcessor.swift
//

public typealias Event = String

public protocol EventProcessor {
    func process(event: Event, completion: @escaping () -> Void)
}
