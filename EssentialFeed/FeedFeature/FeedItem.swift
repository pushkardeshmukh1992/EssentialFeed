//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Admin on 13/02/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}

