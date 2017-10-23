//
//  ViewController.swift
//  stackskills
//
//  Created by Wyz on 23/10/17.
//  Copyright © 2017 Wyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cooolLabel: UILabel!
    
    var tapCount = 0
    
    @IBAction func makeitCool(_ sender: Any) {
        cooolLabel.text = "Buttons are cool!"
        print("Your mom")
    }
    @IBAction func buttonTapped(_ sender: Any) {
       tapCount = tapCount + 1
        print(tapCount)
        if tapCount >= 20 {
            cooolLabel.text = "You've tapped the button more than 10 times!!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

