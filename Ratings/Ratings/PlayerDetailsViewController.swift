//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Erik Xu on 5/8/16.
//  Copyright © 2016 Erik Xu. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    var player:Player?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    
    /*
     * Allows user to tap anywhere on the keyboard to bring up keyboard
     */
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    /*
     * Saves the user input player name
     */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text!, game: "Chess", rating: 1)
        }
    }
    
}
