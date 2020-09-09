//
//  DetailViewController.swift
//  NintendoBook
//
//  Created by Alfredo Arias on 8/21/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var character: Character?
    
    // MARK: - Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var bioTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let character = character {
            print("Detail Name: \(character.name)")
            
            self.title = character.name
            
            self.avatarImageView.image = UIImage(named: character.avatar)
            self.bioTextView.text = character.bio
            
            
        }
    }

}
