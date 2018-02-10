//
//  main.swift
//  YouTubeAPI
//
//  Created by Miyoshi Masataka on 2018/02/10.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

print("Enter keyword here> ", terminator: "")

// 入力されたクエリを取得
guard let keyword = readLine(strippingNewline: true) else {
    
    // 強制終了
    exit(1)

}

// APIクライアント生成
let client = YouTubeClient()

// クエリからリクエスト発行
let request = YouTubeAPI.SearchVideos(keyword: keyword)

// リクエスト送信
client.send(request: request) { (result) in
    
    switch result {
        
    case let .success(response):
        
        for item in response.items {
            
            // ビデオの情報を出力
            print("チャンネル: \(item.snippet.channelTitle) \n タイトル: \(item.snippet.title) \n 投稿日: \(item.snippet.publishedAt) \n サムネイル: \(item.snippet.thumbnails.medium.url)")
            
            print("-----------------------------------------------------------------------")
            
        }
        
        exit(0)
        
    case let .failure(error):
        
        print("error: \(error)")
        
        // 強制終了
        exit(1)
        
    }
    
}

let timeout: TimeInterval = 60

// タイムアウトまでメインスレッド停止
Thread.sleep(forTimeInterval: timeout)

// タイムアウト後
print("Connection timeout...")

exit(1)













