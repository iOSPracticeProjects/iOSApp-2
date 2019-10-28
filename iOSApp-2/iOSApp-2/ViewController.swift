//
//  ViewController.swift
//  iOSApp-2
//
//  Created by vmulugu on 10/27/19.
//  Copyright © 2019 vmulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var EntertheNameTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func SetDefaultMealName(_ sender: Any) {
        
        mealName.text = "Default Text"
        
        
        
    }

}

