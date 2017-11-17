//
//  ListViewInterface.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

protocol ListViewInterface: class {
    
    var presenter: ListPresenterInterface? { get set }
    
    func didReceivedContacts(_ contacts: [Contact])
    func didInsertContact(_ contact: Contact)
    
}
