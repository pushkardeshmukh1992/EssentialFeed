//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Pushkar Deshmukh on 06/07/22.
//

struct FeedErrorViewModel {
    let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
