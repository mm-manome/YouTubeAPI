//
//  YouTubeRequest.swift
//  YouTubeAPI
//
//  Created by Miyoshi Masataka on 2018/02/10.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

protocol YouTubeRequest {
    
    associatedtype Response: Decodable
    
    // MARK: Properties
    
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var queryItems: [URLQueryItem] { get }
    
}

// MARK: - YouTubeRequest Extension

extension YouTubeRequest {
    
    var baseURL: URL {
        
        return URL(string: "https://www.googleapis.com/youtube/v3/search")!
        
    }
    
}










