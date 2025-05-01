import UIKit

class feedback: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone_number: UITextField!
    
    @IBAction func submit_btn(_ sender: Any) {
        // Check if any text field is empty
        guard let userName = name.text, !userName.isEmpty,
              let userEmail = email.text, !userEmail.isEmpty,
              let userPhone = phone_number.text, !userPhone.isEmpty else {
            showAlert(title: "Missing Information", message: "Please fill in all the fields.")
            return
        }
        
        // Show thank you alert if all fields are filled
        showAlert(title: "Thank You", message: "Thanks you for your valuable feedback.")
        
        // Optional: Clear fields after submission
        name.text = ""
        email.text = ""
        phone_number.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Function to show alert
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}
