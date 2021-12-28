//
//  ContactsListController.swift
//  ListOfContacts
//
//  Created by Кирилл Тараско on 28.12.2021.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    
    var humans: [Human] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return humans.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let human = humans[indexPath.row]
        
        cell.textLabel?.text = human.fullName
        return cell
      
        
  
    }
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let infoVC = segue.destination as! HumanViewController
            infoVC.human = humans[indexPath.row]
        }
    }
    
   
}

 
