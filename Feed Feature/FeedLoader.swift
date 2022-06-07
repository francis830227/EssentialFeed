//
//  FeedLoader.swift
//  EssentialFeed (iOS)
//
//  Created by Kai-Ping Tseng on 2022/4/14.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
