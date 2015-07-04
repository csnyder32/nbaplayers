//
//  PlayerDetailViewController.swift
//  NBAPlayers
//
//  Created by Chris Snyder on 6/25/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {

    var passedValue: String!
    var passedCollege: String!
    var passedImage: UIImage!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var playerTextField: UITextField!
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var playerImageView: UIImageView!



    override func viewDidLoad() {
        super.viewDidLoad()
        playerTextField.text = passedValue
        collegeTextField.text = passedCollege
        playerImageView.image = passedImage


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveButton(sender: AnyObject) {
        
        
    }


}
