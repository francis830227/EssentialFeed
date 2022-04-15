//
//  FeedLoader.swift
//  EssentialFeed (iOS)
//
//  Created by Kai-Ping Tseng on 2022/4/14.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
