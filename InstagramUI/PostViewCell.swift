//
//  PostViewCell.swift
//  InstagramUI
//
//  Created by Nicolas Schmidt on 11/8/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class PostViewCell: UITableViewCell {

    // MARK: Outlet
    
    // Post image view
    @IBOutlet weak var postImageView: UIImageView!
    // Post number of likes and like button
    @IBOutlet weak var numberOfLikesButton: UIButton!
    // Post caption
    @IBOutlet weak var captionLabel: UILabel!
    // Post time since post
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    // MARK: Properties
    
    var post: Post! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        self.postImageView.image = post.image
        captionLabel.text = post.caption
        numberOfLikesButton.setTitle("Be the first one to share a comment", for: [])
        timeAgoLabel.text = post.timeAgo
    }
}
