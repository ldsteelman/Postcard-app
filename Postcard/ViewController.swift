//
//  ViewController.swift
//  Postcard
//
//  Created by Lewis Steelman on 1/27/15.
//  Copyright (c) 2015 David Steelman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLable.text = enterMessageTextField.text
        messageLable.hidden = false
        messageLable.textColor = UIColor.redColor()

        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

