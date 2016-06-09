//
//  ViewController.swift
//  FoodTracker
//
//  Created by Maja on 4/26/16.
//  Copyright © 2016 Maja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
// MARK: Properties 123
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(nameTextField.dynamicType)  
        nameTextField.delegate = self
    }
// MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
// MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
    mealNameLabel.text = "Defaul Text"
   
    }

}

