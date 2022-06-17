//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Kai-Ping Tseng on 2022/6/17.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
