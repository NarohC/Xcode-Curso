//
//  GamePickerTableViewController.swift
//  Ratings
//
//  Created by CCDM24 on 10/10/19.
//  Copyright © 2019 Naroh. All rights reserved.
//

import UIKit

class GamePickerTableViewController: UITableViewController {

     // MARK: - Properties
    var games = ["Angry Birds",
                 "Chess",
                 "Russian Roulette",
                 "Spin the Bottle",
                 "Texas Hold'em Poker",
                 "Tic-Tac-Toe"
                ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

}

// MARK: - UITableViewDataSource
extension GamePickerTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath)
        cell.textLabel?.text = games[indexPath.row]
        return cell
    }
}
