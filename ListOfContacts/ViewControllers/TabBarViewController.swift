//
//  TabBarViewController.swift
//  ListOfContacts
//
//  Created by Кирилл Тараско on 28.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        anotherVCs()
    }
 

    private func anotherVCs() {
        let humans = Human.getPerson()
        let contactslistVC = viewControllers?.first as! ContactsListTableViewController
        let moreInfoVC = viewControllers?.last as! MoreInfoViewController
        contactslistVC.humans = humans
        moreInfoVC.humans = humans
    }
}
