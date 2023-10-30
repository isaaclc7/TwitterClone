//
//  EditProfileViewModel.swift
//  TwitterTutorial
//
//  Created by Isaac LECLERCQ on 26/10/2023.
//

import UIKit

enum EditProfileOption: Int, CaseIterable {
    case fullname
    case username
    case bio
    
    var description : String {
        switch self {
        case .fullname:
            return "Name"
        case .username:
            return "Username"
        case .bio:
            return "Bio"
        }
    }
}

struct EditProfileViewModel {
    
    private let user: User
    let option: EditProfileOption
    
    var titleText: String {
        return option.description
    }
    
    var optionValue: String? {
        switch option {
        case .fullname:
            return user.fullname
        case .username:
            return user.username
        case .bio:
            return user.bio
        }
    }
    
    var shoudHideTextField: Bool {
        return option == .bio
    }
    
    var shoudHideTextView: Bool {
        return option != .bio
    }
    
    var shoudHidePlaceholderLabel: Bool {
        return user.bio != nil
    }
     
    init(user: User, option: EditProfileOption) {
        self.user = user
        self.option = option
    }
}
