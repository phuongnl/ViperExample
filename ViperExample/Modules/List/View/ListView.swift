//
//  ListView.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableViewList: UITableView!
    @IBOutlet weak var collectionViewList: UICollectionView!
    
    var presenter: ListPresenterInterface?
    var arrayContact = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableViewList.register(ContactCell.self)
        self.tableViewList.addActivityFooter()
        self.presenter?.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionShowAdd(_ sender: UIBarButtonItem) {
        self.presenter?.actionShowAdd()
    }
    
}

extension ListViewController: ListViewInterface {
    
    func didReceivedContacts(_ contacts: [Contact]) {
        self.arrayContact = contacts
        self.tableViewList.reloadData()
    }
    
    func didInsertContact(_ contact: Contact) {
        self.arrayContact.append(contact)
        let indexPath = IndexPath(row: self.arrayContact.count - 1, section: 0)
        self.tableViewList.beginUpdates()
        self.tableViewList.insertRows(at: [indexPath], with: .automatic)
        self.tableViewList.endUpdates()
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayContact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ContactCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        
        let contact = self.arrayContact[indexPath.row]
        cell.configCell(contact)
        
        return cell
    }
    
}

extension ListViewController: UITableViewDelegate {
    
}
