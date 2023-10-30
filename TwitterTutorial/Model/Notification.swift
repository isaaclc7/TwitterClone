//
//  Notification.swift
//  TwitterTutorial
//
//  Created by Isaac LECLERCQ on 24/10/2023.
//

import Foundation

enum NotificationType: Int {
    case follow
    case like
    case reply
    case retweet
    case mention
}

struct Notification {
    var tweetID: String?
    var timestamp: Date!
    var user: User
    var tweet: Tweet?
    var type: NotificationType!
    
    init(user: User, dictionnary: [String: AnyObject]) {
        self.user = user
        
        if let tweetID = dictionnary["tweetID"] as? String {
            self.tweetID =  tweetID
        }
        
        if let timestamp = dictionnary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
        
        if let type = dictionnary["type"] as? Int {
            self.type = NotificationType(rawValue: type)
        }
    }
    
}
