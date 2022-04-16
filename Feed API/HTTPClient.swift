//
//  HTTPClient.swift
//  EssentialFeed (iOS)
//
//  Created by Kai-Ping Tseng on 2022/4/16.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
