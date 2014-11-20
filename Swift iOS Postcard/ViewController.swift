//
//  ViewController.swift
//  Swift iOS Postcard
//
//  Created by Mark Riley on 13/09/2014.
//  Copyright (c) 2014 His Image Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        if enterNameTextField.text != "" {
            toLabel.text = "To: "+enterNameTextField.text
            toLabel.hidden = false
            enterNameTextField.text = ""
        }
        if enterMessageTextField.text != "" {
            messageLabel.text = enterMessageTextField.text
            messageLabel.textColor = UIColor.brownColor()
            messageLabel.hidden = false
            enterMessageTextField.text = ""
        }
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        sendMessageButton.setTitle("Message Sent", forState: UIControlState.Normal)
    }

}

