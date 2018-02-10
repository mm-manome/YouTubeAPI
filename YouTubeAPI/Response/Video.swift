//
//  Video.swift
//  YouTubeAPI
//
//  Created by Miyoshi Masataka on 2018/02/09.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

struct Video: Decodable {
    
    struct Id: Decodable {
        
        // MARK: Properties
        
        let kind: String
//        let videoId: String
        
    }
    
    // MARK: Properties
    
    let etag: String
    let id: Id
    let kind: String
    let snippet: Snippet
    
}













