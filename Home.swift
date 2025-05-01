//
//  Home.swift
//  Restaurant_App
//
//  Created by Student on 28/04/25.
//

import UIKit

class Home: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table_view: UITableView!
    @IBOutlet weak var segment_control: UISegmentedControl!
    @IBOutlet weak var img_view: UIImageView!
    @IBOutlet weak var txt_field: UILabel!
    
    let drinks = [("Mango Shake","mango_shake"),("Chocolate Shake","chocolate_shake"),("Coca-Cola", "cocacola"), ("Pepsi", "pepsi"), ("Lemonade", "lemonade"), ("Coffee", "coffee"), ("Tea", "tea")]
    let snacks = [("Pakode","pakode"),("Samose", "samose"),("Tikki Chaat", "tikki"),("French Fries", "fries"), ("Burger", "burger"), ("Sandwich", "sandwich"), ("Nachos", "nachos")]
    let sweets = [("Jalebi","jalebi"),("Gulab Jamun", "gulab_jamun"),("Ice Cream", "icecream"), ("Cake", "cake"), ("Donut", "donut"), ("Chocolate", "chocolate")]
    
    var currentData: [(name: String, imageName: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table_view.delegate = self
        table_view.dataSource = self
        
        currentData = drinks
    }
    @IBOutlet weak var bg_image: UIImageView!
    
    @IBAction func segment_changed(_ sender: Any) {
        switch segment_control.selectedSegmentIndex {
        case 0:
            currentData = drinks
            bg_image.image = UIImage(named: "drinks")
        case 1:
            currentData = snacks
            bg_image.image = UIImage(named: "snacks")
        case 2:
            currentData = sweets
            bg_image.image = UIImage(named: "sweets")
        default:
            currentData = []
        }
        
        table_view.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let item = currentData[indexPath.row]
        
        c.textLabel?.text = item.name
        c.imageView?.image = UIImage(named: item.imageName)
        
        return c
    }
    
    // MARK: - Table View Delegate Method (completed)
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = currentData[indexPath.row]
        
        txt_field.text = selectedItem.name
        img_view.image = UIImage(named: selectedItem.imageName)
    }
}
