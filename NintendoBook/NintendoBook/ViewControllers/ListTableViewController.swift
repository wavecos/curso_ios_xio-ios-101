//
//  ListTableViewController.swift
//  NintendoBook
//
//  Created by Alfredo Arias on 8/17/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    let characters = CharacterService.characters()
    var characterSelected : Character?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as! CharacterTableViewCell

        let character = characters[indexPath.row]
        
        // Dibujamos la celda
        cell.avatarImage?.image = UIImage(named: character.avatar)
        cell.nameLabel?.text = character.name
        cell.bioLabel.text = character.bio
        
//        cell.detailTextLabel?.text = "\(character.console) - \(character.year)"

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.characterSelected = characters[indexPath.row]
        
        self.performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    // MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "detailSegue") {
            print("prepare detail segue")
            
            let detailVC = segue.destination as? DetailViewController
            
            detailVC?.character = characterSelected
        }
        
    }

    // MARK: - Actions
    @IBAction func goDetail(sender: Any) {
        
    }





}
