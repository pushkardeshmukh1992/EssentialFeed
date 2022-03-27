//
//  CodableFeedStoreTests.swift
//  EssentialFeedTests
//
//  Created by Pushkar Deshmukh on 27/03/22.
//

import XCTest
import EssentialFeed

class CodableFeedStore {
    func retrieve(completion: @escaping FeedStore.RetrievalCompletion) {
        completion(.empty)
    }

}

class CodableFeedStoreTests: XCTestCase {
    func test_retrieve_deliversEmptyOnEmptyCache() {
        let sut = CodableFeedStore()
        let exp = expectation(description: "Wait for cache retrieval")
         
        sut.retrieve { result in
            switch result {
            case .empty: break
                
            default:
                XCTFail("Expected empty result, got \(result) instead")
            }
            
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 1)
    }
    
    func test_retrieve_hasNoSideEffectsOnEmptyCache() {
        let sut = CodableFeedStore()
        let exp = expectation(description: "Wait for cache retrieval")
         
        sut.retrieve { firstReult in
            sut.retrieve { secondResult in
                switch (firstReult, secondResult) {
                case (.empty, .empty): break
                    
                default:
                    XCTFail("Expected retrievening twice from empty cache to deliver same empty result, got \(firstReult) and \(secondResult)  instead")
                }
                
                exp.fulfill()
            }
            
        }
        
        wait(for: [exp], timeout: 1)
    }
}
