//
//  ViewController.swift
//  Laika'sAage2
//
//  Created by Casey Yu on 1/17/15.
//  Copyright (c) 2015 Casey Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EnterHumanYearsTextField: UITextField!
    
    @IBOutlet weak var DogYearsDisplayTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertButton(sender: UIButton) {
        
        EnterHumanYearsTextField.resignFirstResponder()
        let humanYears = EnterHumanYearsTextField.text.toInt()!
        let convertRate = 7
        
        DogYearsDisplayTextField.hidden = false
        DogYearsDisplayTextField.text = "\(humanYears * convertRate)"
    }

}

