//
//  SearchResponse.swift
//  YouTubeAPI
//
//  Created by Miyoshi Masataka on 2018/02/10.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

struct SearchRespnse<Item: Decodable> : Decodable {
    
    // MARK: Properties
    
    let items: [Item]
    let kind: String
    let pageInfo: PageInfo
    
}
