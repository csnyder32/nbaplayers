//
//  AddViewController.swift
//  NBAPlayers
//
//  Created by Chris Snyder on 6/25/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var collegeTextField: UITextField!

    var imagePicker: UIImagePickerController!


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addPicture(sender: AnyObject)
    {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .PhotoLibrary

        self.presentViewController(imagePicker, animated: true, completion: nil)
    }


    
    @IBAction func draftButton(sender: AnyObject)
    {

        if nameTextField.text == "" {
            var alertController: UIAlertController
            alertController = UIAlertController(title: "Oops!", message: "Please enter a player", preferredStyle: .Alert)

            var doneAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
                println("done button pressed")
            })
            alertController.addAction(doneAction)
            self.presentViewController(alertController, animated: true, completion: nil)

        }else if collegeTextField.text == ""{
            var alertControllerTwo: UIAlertController
                alertControllerTwo = UIAlertController(title: "Oops!", message: "Please enter a college", preferredStyle: .Alert)

            var finishedAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: { (alert) -> Void in
                    println("ok button pressed")
            })
            alertControllerTwo.addAction(finishedAction)
            self.presentViewController(alertControllerTwo, animated: true, completion: nil)
            
        } else{
            newPlayer.addPlayer(nameTextField.text, playerCollege: collegeTextField.text, playerImage:playerImageView.image!)
            nameTextField.text = ""
            collegeTextField.text = ""
        }
    }

    //image picker methods
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        playerImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }

  

}
