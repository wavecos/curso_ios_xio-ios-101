//
//  CharacterTableViewCell.swift
//  NintendoBook
//
//  Created by Alfredo Arias on 8/17/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var avatarImage: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var bioLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
