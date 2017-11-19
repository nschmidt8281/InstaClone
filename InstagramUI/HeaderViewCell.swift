//
//  HeaderViewCell.swift
//  InstagramUI
//
//  Created by Nicolas Schmidt on 11/8/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class HeaderViewCell: UITableViewCell {

    // MARK: Outlet
    
    // Header profile image
    @IBOutlet weak var profileImageView: UIImageView!
    // Header profile username
    @IBOutlet weak var usernameLabel: UILabel!
    // Header follow button
    @IBOutlet weak var followButton: UIButton!
    
    // MARK: Properties
    
    var post: Post! {
        didSet {
            self.updateUI()
        }
    }
    
    // MARK: Methods

    // Update post images
    func updateUI() {
        // Change and modify profile image
        profileImageView.image = post.createdBy.profileImage
        profileImageView.layer.cornerRadius = profileImageView.bounds.width / 2.0
        profileImageView.layer.masksToBounds = true
        
        // Change username label
        usernameLabel.text = post.createdBy.username
        
        // Change formatting of follow button
        followButton.layer.borderWidth = 1.0
        followButton.layer.cornerRadius = 2.0
        followButton.layer.borderColor = followButton.tintColor.cgColor
        followButton.layer.masksToBounds = true
    }
    
    
}
