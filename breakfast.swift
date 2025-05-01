//
//  breakfast.swift
//  Restaurant_App
//
//  Created by Student on 29/04/25.
//

import UIKit

class breakfast: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn1(_ sender: Any) {
        let alert = UIAlertController(title: "Success", message: "Added to Cart Successfully!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
              
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btn3(_ sender: Any) {
        let alert = UIAlertController(title: "Success", message: "Added to Cart Successfully!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
              
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func btn2(_ sender: Any) {
        let alert = UIAlertController(title: "Success", message: "Added to Cart Successfully!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
              
        self.present(alert, animated: true, completion: nil)
    }
    
}
