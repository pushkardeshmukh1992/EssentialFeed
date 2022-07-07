//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Admin on 13/02/22.
//

import Foundation


public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping(Result) -> Void)
}
