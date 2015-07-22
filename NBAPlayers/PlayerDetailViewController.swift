//
//  PlayerDetailViewController.swift
//  NBAPlayers
//
//  Created by Chris Snyder on 6/25/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {

    //MARK: Properties
    var activityViewController: UIActivityViewController!

    // MARK: passed values from table view
    var passedValue: String!
    var passedCollege: String!
    var passedImage: UIImage!

    // MARK: IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var playerTextField: UITextField!
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var playerImageView: UIImageView!



    override func viewDidLoad() {
        super.viewDidLoad()
        playerTextField.text = passedValue
        collegeTextField.text = passedCollege
        playerImageView.image = passedImage


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
    

    // MARK: IBActions
    @IBAction func saveButton(sender: AnyObject) {
        
        
    }
    @IBAction func shareButton(sender: AnyObject)
    {
        activityViewController = UIActivityViewController(activityItems: [playerTextField.text as NSString], applicationActivities: nil)
        presentViewController(activityViewController, animated: true, completion: nil)

    }


}
