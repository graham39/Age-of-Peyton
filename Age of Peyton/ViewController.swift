//
//  ViewController.swift
//  Age of Peyton
//
//  Created by Graham Rosenberg on 12/4/15.
//  Copyright © 2015 Graham Rosenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text!
        let intFromString = Int(stringFromTextField)!
        
        dogYearsLabel.text = "\(intFromString * 7) DogYears"
        dogYearsLabel.hidden = false
        
        enterHumanYearsTextField.resignFirstResponder()
        
        
    }
    @IBAction func converToRealDogYearsButtonPressed(sender: UIButton) {
        
        let stringFromTextField = enterHumanYearsTextField.text!
        
        let doubleFromTextField = Double(stringFromTextField)!
        
        var realDogYears:Double
        
        if doubleFromTextField > 2  {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(realDogYears) Real Dog Years"
        
        enterHumanYearsTextField.resignFirstResponder()
        
    }
    
    
    


}

