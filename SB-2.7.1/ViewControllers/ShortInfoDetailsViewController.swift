//
//  ShortInfoDetailsViewController.swift
//  SB-2.7.1
//
//  Created by xubuntus on 09.11.2021.
//

import UIKit

class ShortInfoDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
