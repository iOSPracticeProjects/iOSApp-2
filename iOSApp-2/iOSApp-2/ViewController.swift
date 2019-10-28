//
//  ViewController.swift
//  iOSApp-2
//
//  Created by vmulugu on 10/27/19.
//  Copyright © 2019 vmulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var EntertheNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Handle the text field’s user input through delegate callbacks.
        EntertheNameTextField.delegate = self
    }
    // MARK: Actions
    @IBAction func SetDefaultMealName(_ sender: Any) {
        
        //mealName.text = "Default Text"
        
        
    }
    
    //MARK: Text Fileld delegate methods
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        mealName.text = textField.text
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
}

