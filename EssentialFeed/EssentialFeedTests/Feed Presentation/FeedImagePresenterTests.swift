//
//  FeedImagePresenterTests.swift
//  EssentialFeedTests
//
//  Created by Pushkar Deshmukh on 08/07/22.
//

import XCTest

class FeedImagePresenter {
    init(view: Any) {
        
    }
}

class FeedImagePresentationTests: XCTestCase {
    func test_init_doesNotSendMessagesToView() {
        let (_, view) = makeSUT()
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // MARK: Helpers
    
    private func makeSUT(file: StaticString = #file, line: UInt = #line) -> (sut: FeedImagePresenter, view: ViewSpy){
        let view = ViewSpy()
        let sut = FeedImagePresenter(view: view)
        trackForMemoryLeaks(view, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, view)
    }
    
    private class ViewSpy {
        let messages = [Any]()
    }
}
