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
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    

    @IBOutlet weak var toggleAddSubtraction: UIButton!
    var addition = true
    var subtraction = false
    var multiplication = false
    var division = false
    
    @IBAction func makeitCool(_ sender: Any) {
        if toggleAddSubtraction.titleLabel!.text! == "ADD" {
            toggleAddSubtraction.setTitle("SUBTRACT", for: .normal)
            toggleAddSubtraction.titleLabel!.text! = "SUBTRACT"
             addition = false
            subtraction = true
        } else if toggleAddSubtraction.titleLabel!.text! == "SUBTRACT" {
            toggleAddSubtraction.setTitle("MULTIPLY", for: .normal)
             subtraction = false
            multiplication = true
            
        } else if toggleAddSubtraction.titleLabel!.text! == "MULTIPLY" {
            toggleAddSubtraction.setTitle("DIVIDE", for: .normal)
             multiplication = false
            division = true
            
        } else if toggleAddSubtraction.titleLabel!.text! == "DIVIDE" {
            toggleAddSubtraction.setTitle("ADD", for: .normal)
            division = false
            addition = true
        }
        
        
        print("Your mom")
    }
    @IBAction func buttonTapped(_ sender: Any) {
        if addition == true {
            cooolLabel.text = "Answer is \(Double(text1.text!)! + Double(text2.text!)!)"
        } else if subtraction == true {
            cooolLabel.text = "Answer is \(Double(text1.text!)! - Double(text2.text!)!)"
        } else if multiplication == true {
            cooolLabel.text = "Answer is \(Double(text1.text!)! * Double(text2.text!)!)"
        } else if division == true {
            cooolLabel.text = "Answer is \(Double(text1.text!)! / Double(text2.text!)!)"
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

