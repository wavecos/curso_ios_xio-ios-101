//
//  Character.swift
//  NintendoBook
//
//  Created by Alfredo Arias on 8/17/20.
//  Copyright © 2020 academy. All rights reserved.
//

import Foundation

class Character {
    
    var name: String
    var console: String
    var year: Int
    var bio: String
    var avatar: String
    
    init(
        name: String,
        console: String,
        year: Int,
        bio: String,
        avatar: String
    ) {
        self.name = name
        self.console = console
        self.year = year
        self.bio = bio
        self.avatar = avatar
    }
    
}
