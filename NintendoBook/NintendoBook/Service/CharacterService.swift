//
//  CharacterService.swift
//  NintendoBook
//
//  Created by Alfredo Arias on 8/17/20.
//  Copyright © 2020 academy. All rights reserved.
//

import Foundation

class CharacterService {
    
    class func characters() -> [Character] {
        let mario = Character(
            name: "Mario", console: "NES", year: 1990, bio: "Donec ullamcorper nulla.",
            avatar: "mario"
        )
        
        let luigui = Character(name: "Luigi", console: "SNES", year: 1992, bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo.", avatar: "luigi")

        let donkeyKong = Character(name: "Donkey Kong", console: "N64", year: 1996, bio: "Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.", avatar: "donkeykong")

        let toad = Character(name: "Toad", console: "NES", year: 1991, bio: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. AAAA", avatar: "toad")

        let peach = Character(name: "Princess Peach", console: "NES", year: 1991, bio: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.", avatar: "peach")

        return [mario, luigui, donkeyKong, toad, peach]
    }
    
    
}
