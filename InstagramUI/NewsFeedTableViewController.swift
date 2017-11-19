//
//  NewsFeedTableViewController.swift
//  InstagramUI
//
//  Created by Nicolas Schmidt on 11/8/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class NewsFeedTableViewController: UITableViewController {
    
    // MARK: Properties
    var posts: [Post]?
    
    // MARK: Models
    struct Storyboard {
        static let postCell = "PostCell"
        static let postHeaderCell = "PostHeaderCell"
        static let postHeaderHeight: CGFloat = 57.0
        static let postCellDefaultHeight: CGFloat = 584
    }
    
    // Mark: Methods
    
    func fetchPosts() {
        self.posts = Post.fetchPosts()
        self.tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fetchPosts()
        
        tableView.estimatedRowHeight = Storyboard.postCellDefaultHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorColor = UIColor.clear
    }
}

extension NewsFeedTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        if let posts = posts {
            return posts.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let _ = posts {
            return 1
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.postCell, for: indexPath) as! PostViewCell
        
        cell.post = self.posts?[indexPath.section]
        cell.selectionStyle = .none
        
        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.postHeaderCell) as! HeaderViewCell
        
        cell.post = self.posts?[section]
        cell.backgroundColor = UIColor.white
        
        return cell
    }
    */

    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return Storyboard.postHeaderHeight
    }
}







