//
//  HumanInfoViewController.swift
//  ListOfContacts
//
//  Created by Кирилл Тараско on 28.12.2021.
//

import UIKit

class HumanViewController: UIViewController {
    
    var human: Human!

    @IBOutlet var numberLabel: UILabel!
    
    @IBOutlet var mailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = human.fullName
        numberLabel.text = "Phone: \(human.phoneNumber)"
       mailLabel.text = "Email: \(human.email)"
    }
    
}
