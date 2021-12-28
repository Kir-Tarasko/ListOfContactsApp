//
//  TabBarViewController.swift
//  ListOfContacts
//
//  Created by Кирилл Тараско on 28.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let humans = Human.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()

        anotherVCs(with: humans)
    }
 
}

extension TabBarViewController {
    private func anotherVCs(with humans: [Human]) {
        let contactslistVC = viewControllers?.first as! ContactsListTableViewController
        let moreInfoVC = viewControllers?.last as! MoreInfoViewController
        contactslistVC.humans = humans
        moreInfoVC.humans = humans
    }
}
