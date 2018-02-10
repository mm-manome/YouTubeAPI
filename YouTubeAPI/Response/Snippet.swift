//
//  Snippet.swift
//  YouTubeAPI
//
//  Created by Miyoshi Masataka on 2018/02/09.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

struct Snippet: Decodable {
    
    struct Thumbnails: Decodable {
        
        struct Info: Decodable {
            
            // MARK: Properties
            
            let width: Int
            let height: Int
            let url: String
            
        }
        
        // MARK: Properties

        let medium: Info
        let high: Info
        
    }
    
    // MARK: Properties
    
    let channelId: String
    let channelTitle: String
    let description: String
    let publishedAt: String
    let thumbnails: Thumbnails
    let title: String
    
}













