//
//  ShortInfoTableViewController.swift
//  SB-2.7.1
//
//  Created by xubuntus on 09.11.2021.
//

import UIKit

class ShortInfoTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ShortInfoDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.person = persons[indexPath.row]
        detailsVC.hidesBottomBarWhenPushed = true
        modifyBackButton()
    }
        
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullname", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    private func modifyBackButton() -> Void {
        let backItem = UIBarButtonItem()
        backItem.title = "back"
        navigationItem.backBarButtonItem = backItem
    }
}
