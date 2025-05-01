//
//  Login.swift
//  Restaurant_App
//
//  Created by Student on 28/04/25.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login_btn(_ sender: Any) {
        if username.text == "12215429" && password.text == "chandan" {
//            showAlert(title: "Success", message: "Login Successful")
        } else {
            showAlert(title: "Error", message: "Invalid Username or Password")
        }
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
        
    }
}
