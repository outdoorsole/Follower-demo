//
//  FollowerCell.swift
//  Follower-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FollowerCell: UITableViewCell {
  
  let isFollowingString = "You are following this user"
  let isNotFollowingString = "You are not following this user"
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var followInfoLabel: UILabel!
  @IBOutlet weak var followButton: FollowButton!
  
  var user: User! {
    didSet {
      setUIForCurrentFollowingState()
    }
  }

  @IBAction func followButtonPressed(_ sender: AnyObject) {
    print(#function)
    if followInfoLabel.text == isNotFollowingString {
        followInfoLabel.text = isFollowingString
    } else {
        followInfoLabel.text = isNotFollowingString
    }
  }
  
  func setUIForCurrentFollowingState() {
    nameLabel.text = user.name
    followInfoLabel.text = user.isFollowing ? isFollowingString : isNotFollowingString
    followButton.followState = user.isFollowing ? .isFollowing : .isNotFollowing
  }

}



