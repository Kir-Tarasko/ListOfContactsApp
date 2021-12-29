//
//  ContactsListController.swift
//  ListOfContacts
//
//  Created by Кирилл Тараско on 28.12.2021.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    
    var humans: [Human]!
        
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return humans.count
        }
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            var content = cell.defaultContentConfiguration()
            let human = humans[indexPath.row]
            
            content.text = human.fullName
            cell.contentConfiguration = content
            return cell
            
            
            
        }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           guard let humanInfoVC = segue.destination as? HumanViewController else { return }
           guard let indexPath = tableView.indexPathForSelectedRow else { return }
           humanInfoVC.human = humans[indexPath.row]
       }
   }
    
   


 
