//
//  ViewController.swift
//  MyLab3
//
//  Created by user237042 on 1/28/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var countryName: UITextField!
    
    @IBOutlet weak var ageValue: UITextField!
    
    @IBOutlet weak var userViewContent: UITextView!
    
    func updateUserViewContent() {
            let text1 = firstName.text ?? ""
            let text2 = lastName.text ?? ""
            let text3 = countryName.text ?? ""
            let text4 = ageValue.text ?? ""

            let concatenatedText = "\(text1) \n\(text2) \n\(text3) \n\(text4)"
        userViewContent.text = concatenatedText
        }
    
    
    @IBOutlet weak var successLabel: UILabel!
    
    @IBAction func addButton(_ sender: Any) {
        updateUserViewContent()
    }
    
    @IBAction func submitButton(_ sender: Any) {
        if let text1 = firstName.text, !text1.isEmpty,
           let text2 = lastName.text, !text2.isEmpty,
           let text3 = countryName.text, !text3.isEmpty,
           let text4 = ageValue.text, !text4.isEmpty
        {
            successLabel.text = "Successfully Submitted!"
            return
        }
        else {
            successLabel.text = "Complete the missing info...."
            return
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        countryName.text = ""
        ageValue.text = ""
        userViewContent.text = ""
        successLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
			

}

