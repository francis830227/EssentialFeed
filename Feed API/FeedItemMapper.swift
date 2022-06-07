//
//  FeedItemMapper.swift
//  EssentialFeed (iOS)
//
//  Created by Kai-Ping Tseng on 2022/4/16.
//

import Foundation

internal final class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    private static var OK_200: Int { return 200 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == OK_200,
                let root = try? JSONDecoder().decode(Root.self, from: data) else {
                    throw RemoteFeedLoader.Error.invalidData
        }
        return root.items
    }
}
