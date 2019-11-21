//
//  FriendTableViewCell.swift
//  HobbyTracker
//
//  Created by patelpra on 11/20/19.
//  Copyright © 2019 Crus Technologies. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    
    // Getter and Setter - Did set is called when setter is called, friend = Friend
    var friend: Friend? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let friend = friend else { return }
        
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        hobbiesLabel.text = "\(friend.hobbies.count) hobbies" // 3 hobbies
        
    }

}

