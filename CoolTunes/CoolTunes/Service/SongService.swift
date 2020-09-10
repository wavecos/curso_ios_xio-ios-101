//
//  SongService.swift
//  CoolTunes
//
//  Created by Alfredo Arias on 8/26/20.
//  Copyright © 2020 academy. All rights reserved.
//

import Foundation

class SongService {
    
    // Constants
    let defaultSession = URLSession(configuration: .default)
    
    // Variables
    var dataTask: URLSessionDataTask?
    var songs: [Song] = []
    var errorMsg = ""
    
    // Type Alias
    typealias JSONDictionary = [String: Any]
    typealias QueryResult = ([Song]?, String?) -> Void
    typealias ImageResult = (Data?, String?) -> Void
    
    func searchResult(term: String, completion: @escaping QueryResult) {
        
        dataTask?.cancel()
        
        if let urlComponents = URLComponents(string: "https://itunes.apple.com/search?term=\(term)&entity=song&limit=50") {
            
            guard let url = urlComponents.url else {
                return
            }
            
            dataTask = defaultSession.dataTask(with: url) {[weak self] data, response, error in
                
                if let error = error {
                    self?.errorMsg = "Error: " + error.localizedDescription
                } else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                    
                    self?.processSearchResult(data)
                    
                    DispatchQueue.main.async {
                        completion(self?.songs, self?.errorMsg)
                    }
                }
                
            }
            
            dataTask?.resume()
        }
        
    }
    
    func loadImageFrom(url: URL, completion: @escaping ImageResult) {
        dataTask?.cancel()
        
        dataTask = defaultSession.dataTask(with: url) {[weak self] data, response, error in
            
            if let error = error {
                self?.errorMsg = "Error: " + error.localizedDescription
            } else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                
                DispatchQueue.main.async {
                    completion(data, self?.errorMsg)
                }
            }
            
        }
        
        dataTask?.resume()
    }
    
    private func processSearchResult(_ data: Data) {
        // Set the songs var
        var resp: JSONDictionary?
        songs.removeAll()
        
        do {
            resp = try JSONSerialization.jsonObject(with: data, options: []) as? JSONDictionary
        } catch let parseErr as NSError {
            errorMsg = "Serialization error :" + parseErr.localizedDescription
            
            return
        }
        
        guard let array = resp!["results"] as? [Any] else {
            errorMsg = "Data not contains results key"
            return
        }
        
        for songDict in array {
            if let songDict = songDict as? JSONDictionary,
                let artistName = songDict["artistName"] as? String,
                let trackName = songDict["trackName"] as? String,
                let albumName = songDict["collectionName"] as? String,
                let albumImageUrl = songDict["artworkUrl100"] as? String,
                let price = songDict["trackPrice"] as? Double,
                let previewUrl = songDict["previewUrl"] as? String,
                let releaseDateStr = songDict["releaseDate"] as? String,
                let genreName = songDict["primaryGenreName"] as? String {
                
                let releaseDate = Date.dateFromString(dateStr: releaseDateStr)
                
                let song = Song(artistName: artistName, trackName: trackName, albumName: albumName, albumImageUrl: albumImageUrl, price: price, previewUrl: previewUrl, releaseDate: releaseDate, genreName: genreName)
                
                songs.append(song)
            } else {
                errorMsg = "Error when parsing song Dict"
            }
        }
    }
    
}

