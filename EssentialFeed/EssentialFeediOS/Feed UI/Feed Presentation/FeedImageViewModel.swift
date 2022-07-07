//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Pushkar Deshmukh on 25/06/22.
//

import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        return location != nil
    }
}
