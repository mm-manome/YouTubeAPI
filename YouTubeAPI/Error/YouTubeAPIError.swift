//
//  YouTubeAPIError.swift
//  YouTubeAPI
//
//  Created by Miyoshi Masataka on 2018/02/10.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

struct YouTubeAPIError: Decodable, Error {
    
    struct Error: Decodable {
        
        struct FieldError: Decodable {
            
            // MARK: Properties
            
            let reason: String
            let message: String
            let locationType: String
            
        }
        
        // MARK: Properties
        
        let fieldErrors: [FieldError]
        let message: String
        
    }
    
    // MARK: Properties
    
    let error: Error
    
}























