//
//  SearchViewController.swift
//  CoolTunes
//
//  Created by Alfredo Arias on 8/21/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK - Constants
    let songService = SongService()
    
    // MARK - Variables
    var songs: [Song] = []
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register Searchbar Delegate
        self.searchBar.delegate = self
        
        // Register Datasource
        self.tableView.dataSource = self
        
        // Register Cell Nib
        tableView.register(UINib(nibName: "SongTableViewCell", bundle: nil), forCellReuseIdentifier: "SongTableViewCell")
    }

}

// MARK: - Data Source
extension SearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongTableViewCell", for: indexPath) as! SongTableViewCell
        
        let song = self.songs[indexPath.row]
        
        cell.songInfoLabel.text = song.trackName
        cell.detailInfoLabel.text = "\(song.albumName) - \(song.artistName)"
        
        if let imageUrl = song.albumImageUrl, let url = URL(string: imageUrl) {
            
            songService.loadImageFrom(url: url) { (imageData, errMsg) in
                
                if let imageData = imageData {
                    DispatchQueue.main.async {
                        cell.albumImageView.image = UIImage(data: imageData)
                    }
                }
            }
        }
        
        return cell
    }
}

// MARK - Search Bar Delegate

extension SearchViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
        guard let searchText = searchBar.text else {
            return
        }
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        let parseSearchText = searchText.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)
            
        songService.searchResult(term: parseSearchText ?? "") { (songs, errorMsg) in
            
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            
            if let errorMsg = errorMsg {
                print(errorMsg)
            }
            
            if let songs = songs {
                self.songs = songs
                self.tableView.reloadData()
            }
            
        }
        
    }
    
}


