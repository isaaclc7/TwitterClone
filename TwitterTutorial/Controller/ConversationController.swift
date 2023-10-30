//
//  ConversationController.swift
//  TwitterTutorial
//
//  Created by Isaac LECLERCQ on 09/10/2023.
//

import UIKit

class ConversationController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helper
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
