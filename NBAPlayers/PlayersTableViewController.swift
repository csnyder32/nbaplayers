//
//  PlayersTableViewController.swift
//  NBAPlayers
//
//  Created by Chris Snyder on 6/25/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController, UITableViewDelegate {
    var valueToPass: String!
    var collegeToPass: String!
    var imageToPass: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return newPlayer.players.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! PlayerTableViewCell

        // Configure the cell...
        cell.playerNameLabel.text = newPlayer.players[indexPath.row].playerName
        cell.playerCollegeLabel.text = newPlayer.players[indexPath.row].playerCollege
        cell.playerImage.image = newPlayer.players[indexPath.row].playerImage

        return cell
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {

        if editingStyle == UITableViewCellEditingStyle.Delete{
            newPlayer.players.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade )
        }

    }

    @IBAction func unwindAction(segue: UIStoryboardSegue)
    {
      

    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detail" {
            let newVC = segue.destinationViewController as! PlayerDetailViewController

            //picking up the selected index path to segue to new viewcontroller for player name
            let indexPath = tableView.indexPathForSelectedRow()
            let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as! PlayerTableViewCell
            valueToPass = currentCell.playerNameLabel.text
            newVC.passedValue = valueToPass

            //pickng up the selected index path to segue to the new view contorller for player college
            let indexPathTwo = tableView.indexPathForSelectedRow()
            let currentCellTwo = tableView.cellForRowAtIndexPath(indexPath!) as! PlayerTableViewCell
            collegeToPass = currentCell.playerCollegeLabel.text
            newVC.passedCollege = collegeToPass

            //picking up the selected index path to segue to the new view controller for the image
            let indexPathThree = tableView.indexPathForSelectedRow()
            let currentCellThree = tableView.cellForRowAtIndexPath(indexPathThree!) as! PlayerTableViewCell
            imageToPass = currentCell.playerImage.image
            newVC.passedImage = imageToPass

            

        }
    }
  

}
