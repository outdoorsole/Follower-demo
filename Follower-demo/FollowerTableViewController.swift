//
//  FollowerTableViewController.swift
//  Follower-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FollowerTableViewController: UITableViewController {
    
    // Set the initial default state for each user to NOT following
    var users: [User] =  [
        User(name: "John", isFollowing: false),
        User(name: "Carl", isFollowing: false),
        User(name: "Michael", isFollowing: false),
        User(name: "Scott", isFollowing: false),
        User(name: "Jenny", isFollowing: false),
        User(name: "Marina", isFollowing: false),
        User(name: "Sarah", isFollowing: false),
        User(name: "Wendy", isFollowing: false),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Following"
    }
    
    
    // MARK: - Table view data source
    
    // currently, this function is being invoked 3 times
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("users.count in tableView func: \(users.count)")
        return users.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowerCell") as! FollowerCell
        cell.user = users[indexPath.row]
        print("cell.user in tableView function: \(cell.user)")
        return cell
    }
    
    func updateUser(user: User) {
        print(user)
    }
}
