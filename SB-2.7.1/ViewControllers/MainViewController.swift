//
//  ViewController.swift
//  SB-2.7.1
//
//  Created by xubuntus on 09.11.2021.
//

import UIKit

class MainViewController: UITabBarController {
    
    private let persons = DataManager.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers?.forEach {
            guard let tabNavigationVC = $0 as? UINavigationController else { return }
            if let fullInfoVC = tabNavigationVC.topViewController as? FullInfoTableViewController {
                fullInfoVC.persons = persons
            } else if let shortInfoVC = tabNavigationVC.topViewController as? ShortInfoTableViewController {
                shortInfoVC.persons = persons
            }
        }
    }
}

