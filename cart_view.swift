//
//  cart_view.swift
//  Restaurant_App
//
//  Created by Student on 29/04/25.
//

import UIKit

class cart_view: UIViewController {

    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var lebel1: UILabel!
        
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var stepper2: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper1.minimumValue = 1
        stepper1.maximumValue = 20
        
        stepper1.value = 1
        
        stepper2.minimumValue = 1
        stepper2.maximumValue = 20
        
        stepper2.value = 1
        updateQuantityLable()
        updateQuantity2()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepper1_btn(_ sender: Any) {
        updateQuantityLable()
    }
    
    
    @IBAction func stepper2_btn(_ sender: Any) {
        updateQuantity2()
    }
    func updateQuantityLable(){
        let quantity = Int(stepper1.value)
        lebel1.text = "\(quantity)"
        
    }
    
    func updateQuantity2(){
        let quantity2 = Int(stepper2.value)
        label2.text = "\(quantity2)"
    }
    
    
    @IBAction func proceed_to_pay(_ sender: Any) {
        showAlert(title: "Payment", message: "Payment succesfull!")
        
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
    
    
    @IBOutlet weak var totalbtn: UIButton!
    @IBOutlet weak var total: UILabel!
    
    @IBAction func total_action(_ sender: Any) {
        
        guard let quantity1 = Int(lebel1.text ?? "0"), let quantity2 = Int(label2.text ?? "0") else {
                total.text = "Invalid input"
                return
            }
            
            let totalAmount = (29 * quantity1) + (39 * quantity2)
            
            total.text = "₹\(totalAmount)"
        
    }
}
