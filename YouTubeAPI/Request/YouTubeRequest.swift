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
    
    var API_KEY: String { get }
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var queryItems: [URLQueryItem] { get }
    
}

// MARK: - YouTubeRequest Extension

extension YouTubeRequest {
    
    var API_KEY: String {
        
        // Xcodeにアクセス
        let env = ProcessInfo.processInfo.environment
        
        // API_KEY設定
        let API_KEY = env["API_KEY"]!
        
        return API_KEY
        
    }
    
    var baseURL: URL {
        
        return URL(string: "https://www.googleapis.com/youtube/v3")!
        
    }
    
    // MARK: Methods
    
    func buildURLRequest() -> URLRequest {
        
        let url = baseURL.appendingPathComponent(path)
        
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        switch  method {
            
        case .get:
            
            components?.queryItems = queryItems
            
        default:
            
            fatalError("Unsupported this method[\(method)].")
            
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.url = components?.url
        urlRequest.httpMethod = method.rawValue
        
        return urlRequest
        
    }
    
}










