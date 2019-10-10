//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by CCDM24 on 10/10/19.
//  Copyright © 2019 Naroh. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    // MARK: - Properties
    var player: Player?
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    // MARK: - Initializers
    
    required init?(coder aDecoder: NSCoder) {
        print("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit{
        print("deinit PlayerDetailsViewController")
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        if segue.identifier == "SavePlayerDetail",
        let playerName = nameTextfield.text {
            player = Player(name: playerName, game: "Chess",rating: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

}

// MARK: - IBActions
extension PlayersViewController {
    @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue){
        
    }
    
    @IBAction func savePlayerDetail(segue: UIStoryboardSegue){
        guard let playerDetailsViewController = segue.source as? PlayerDetailsViewController, let player = playerDetailsViewController.player else {
            return
        }
        
        players.append(player)
        
        let indexPath = IndexPath(row: players.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
        
    }
}

// MARK: - UITableViewDelegate
extension PlayerDetailsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            nameTextfield.becomeFirstResponder()
        }
    }

}
