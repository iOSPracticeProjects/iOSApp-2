//
//  ViewController.swift
//  iOSApp-2
//
//  Created by vmulugu on 10/27/19.
//  Copyright © 2019 vmulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var EntertheNameTextField: UITextField!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
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
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
       // Hide the keyboard.
           EntertheNameTextField.resignFirstResponder()
           
           // UIImagePickerController is a view controller that lets a user pick media from their photo library.
           let imagePickerController = UIImagePickerController()
           
           // Only allow photos to be picked, not taken.
           imagePickerController.sourceType = .photoLibrary
           
           // Make sure ViewController is notified when the user picks an image.
           imagePickerController.delegate = self
           present(imagePickerController, animated: true, completion: nil)
        
        
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
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            dismiss(animated: true, completion: nil)

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
           // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
               fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
           }
           
           // Set photoImageView to display the selected image.
           photoImageView.image = selectedImage
           
           // Dismiss the picker.
           dismiss(animated: true, completion: nil)
    }
    
}

