//
//  ListPresenter.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

class ListPresenter: ListPresenterInterface {
    
    var view: ListViewInterface?
    var interactor: ListInteractorInterface?
    var wireframe: ListWireframeInterface?
    
    func viewDidLoad() {
        self.getAllContact()
    }
    
    func actionShowAdd() {
        if let _view = self.view {
            self.wireframe?.showAddScreen(from: _view)
        }
    }
    
    func getAllContact() {
        guard let arrayContact = self.interactor?.handleGetAllContact() else { return }
        self.view?.didReceivedContacts(arrayContact)
    }
    
}

extension ListPresenter: ListInteractorDelegate {
    
}

extension ListPresenter: AddModuleDelegate {
    
    func didCancelAddContact() {
        
    }
    
    func didAddContact(_ contact: Contact) {
        self.view?.didInsertContact(contact)
    }
    
}
