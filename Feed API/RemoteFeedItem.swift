//
//  RemoteFeedItem.swift
//  EssentialFeed (iOS)
//
//  Created by Kai-Ping Tseng on 2022/6/7.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
