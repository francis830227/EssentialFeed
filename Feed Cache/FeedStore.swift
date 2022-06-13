//
//  FeedStore.swift
//  EssentialFeed (iOS)
//
//  Created by Kai-Ping Tseng on 2022/6/6.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    typealias RetrievalCompletion = (Error?) -> Void
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    func retreive(completion: @escaping RetrievalCompletion)
}
