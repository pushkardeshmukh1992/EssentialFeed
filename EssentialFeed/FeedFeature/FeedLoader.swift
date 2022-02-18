//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Admin on 13/02/22.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

extension LoadFeedResult: Equatable where Error: Equatable { }

protocol FeedLoader {
    associatedtype error: Swift.Error
    func load(completion: @escaping(LoadFeedResult<Error>) -> Void)
}
