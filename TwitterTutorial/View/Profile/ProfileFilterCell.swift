//
//  ProfileFilterCell.swift
//  TwitterTutorial
//
//  Created by Isaac LECLERCQ on 20/10/2023.
//

import UIKit


class ProfileFilterCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    var options: ProfileFilterOptions! {
        didSet {
            titleLabel.text = options.descriptions
        }
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "test filter"
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            titleLabel.font = isSelected ? UIFont.boldSystemFont(ofSize: 16) : UIFont.systemFont(ofSize: 14)
            titleLabel.textColor = isSelected ? .twitterBlue : .lightGray
        }
    }
    
    // MARK: - Lyfe Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(titleLabel)
        titleLabel.center(inView: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
