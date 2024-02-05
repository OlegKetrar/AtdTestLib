//
//  LibFacade.swift
//

public class LibFacade {
    let processor: EventProcessor

    public init(processor: EventProcessor) {
        self.processor = processor
    }

    public static func make() -> LibFacade {
        LibFacade(processor: FakeRemoteEventProcessor())
    }

    public func addEvent(_ event: Event) {
        processor.process(event: event, completion: {})
    }
}
