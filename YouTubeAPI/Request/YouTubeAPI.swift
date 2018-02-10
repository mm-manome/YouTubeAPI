//
//  YouTubeAPI.swift
//  YouTubeAPI
//
//  Created by Miyoshi Masataka on 2018/02/10.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

final class YouTubeAPI {
    
    struct SearchVideos: YouTubeRequest {
        
        // MARK: Properties
        
        let keyword: String
        
        // YouTubeRequestが要求する連想型
        typealias Response = SearchRespnse<Video>
        
        // MARK: protocolに準拠
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search"
        }
        
        var queryItems: [URLQueryItem] {
            
            return [
                URLQueryItem(name: "key", value: API_KEY),
                URLQueryItem(name: "q", value: keyword),
                URLQueryItem(name: "part", value: "snippet"),
                URLQueryItem(name: "maxResults", value: "40"),
                URLQueryItem(name: "order", value: "date")
            ]
            
        }
        
    }
    
}




















