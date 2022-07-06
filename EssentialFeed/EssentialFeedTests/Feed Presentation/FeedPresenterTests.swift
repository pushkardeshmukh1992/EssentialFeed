//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Pushkar Deshmukh on 06/07/22.
//

import XCTest
//@testable import EssentialFeediOS

final class FeedPresenter {
    init(view: Any) {
        
    }
}

class FeedPresenterTests: XCTestCase {
    
    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        
        _ = FeedPresenter(view: view)
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // MARK: Helpers
    
    private class ViewSpy {
        let messages = [Any]()
    }
    
}
