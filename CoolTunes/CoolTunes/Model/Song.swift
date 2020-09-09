//
//  Song.swift
//  CoolTunes
//
//  Created by Alfredo Arias on 8/21/20.
//  Copyright © 2020 academy. All rights reserved.
//

import Foundation

class Song {
    
    let artistName: String?
    let trackName: String?
    let albumName: String?
    let albumImageUrl: String?
    let price: Double?
    let previewUrl: String?
    let releaseDate: Date?
    let genreName: String?
    
    init(artistName: String,
    trackName: String,
    albumName: String,
    albumImageUrl: String,
    price: Double,
    previewUrl: String,
    releaseDate: Date?,
    genreName: String) {
        self.artistName = artistName
        self.trackName = trackName
        self.albumName = albumName
        self.albumImageUrl = albumImageUrl
        self.price = price
        self.previewUrl = previewUrl
        self.releaseDate = releaseDate
        self.genreName = genreName
    }
}
