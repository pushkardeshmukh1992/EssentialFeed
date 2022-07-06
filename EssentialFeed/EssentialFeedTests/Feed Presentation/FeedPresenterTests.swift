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
        let (_, view) = makeSUT()
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
//    func test_disStartLoadingFeed_displayNoErrorMessage() {
//        let (_, view) = makeSUT()
//        
//        XCTAssertEqual(view.messages, [.display(.noError)])
//    }
    
    // MARK: Helpers
    
    private func makeSUT(file: StaticString = #file, line: UInt = #line) -> (sut: FeedPresenter, view: ViewSpy) {
        let view = ViewSpy()
        let sut = FeedPresenter(view: view)
        trackForMemoryLeaks(view, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, view)
    }
    
    private class ViewSpy {
        let messages = [Any]()
    }
    
}