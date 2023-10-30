//
//  User.swift
//  TwitterTutorial
//
//  Created by Isaac LECLERCQ on 12/10/2023.
//

import Foundation
import Firebase

struct User {
    var fullname: String
    let email: String
    var username: String
    var profileImageUrl: URL?
    let uid: String
    var isFollowed = false
    var stats: UserRelationStats?
    var bio: String?
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == uid }
    
    init(uid: String, dictionnary: [String: AnyObject]) {
        self.uid = uid
        
        self.fullname = dictionnary["fullname"] as? String ?? ""
        self.email = dictionnary["email"] as? String ?? ""
        self.username = dictionnary["username"] as? String ?? ""
        self.bio = dictionnary["bio"] as? String ?? ""
        
        if let profileImageUrlString = dictionnary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else { return }
            self.profileImageUrl = url
        }
        
    }
}

struct UserRelationStats {
    var followers: Int
    var following: Int
}
