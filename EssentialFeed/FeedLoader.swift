//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Admin on 13/02/22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
