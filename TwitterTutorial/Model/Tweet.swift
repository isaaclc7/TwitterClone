//
//  Tweet.swift
//  TwitterTutorial
//
//  Created by Isaac LECLERCQ on 18/10/2023.
//

import Foundation

struct Tweet {
    let caption: String
    let tweetID: String
    var like: Int
    var timestamp: Date!
    let retweetCount: Int
    var user: User
    var didLike = false
    var replyingTo: String?
    var isReply: Bool { return replyingTo != nil }
    
    init(user: User, tweetID: String, dictionnary: [String: Any]) {
        self.tweetID = tweetID
        self.user = user
        self.caption = dictionnary["caption"] as? String ?? ""
        self.like = dictionnary["like"] as? Int ?? 0
        self.retweetCount = dictionnary["retweetCount"] as? Int ?? 0
        
        if let timestamp = dictionnary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
        
        if let replyingTo = dictionnary["replyingTo"] as? String {
            self.replyingTo = replyingTo
        }
    }
    
}
