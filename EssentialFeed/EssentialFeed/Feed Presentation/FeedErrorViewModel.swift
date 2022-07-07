//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Pushkar Deshmukh on 07/07/22.
//

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
