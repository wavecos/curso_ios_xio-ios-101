//
//  SongTableViewCell.swift
//  CoolTunes
//
//  Created by Alfredo Arias on 8/28/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {
    
    // MARK - Outlets
    @IBOutlet weak var albumImageView: UIImageView!
    
    @IBOutlet weak var songInfoLabel: UILabel!
    @IBOutlet weak var detailInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
