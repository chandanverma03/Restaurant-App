import UIKit

class sign_up: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var confirm_pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Sign_Up(_ sender: Any) {
        guard let username = name.text, !username.isEmpty,
              let emailText = email.text, !emailText.isEmpty,
              let pass = password.text, !pass.isEmpty,
              let confirmPass = confirm_pass.text, !confirmPass.isEmpty else {
            showAlert(title: "Error", message: "Please fill all details")
            return
        }
        
        if pass != confirmPass {
            showAlert(title: "Error", message: "Passwords do not match")
            return
        }
        
        if !emailText.contains("@") {
            showAlert(title: "Error", message: "Please enter a valid email")
            return
        }

    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
