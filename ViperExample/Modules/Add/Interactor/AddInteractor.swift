//
//  AddInteractor.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

class AddInteractor: AddInteractorInterface {
    
    var presenter: AddInteractorDelegate?
    
    func handleSaveContact(firstName: String?, lastName: String?) -> Contact? {
        let contact = LocalDataManager.saveContact(firstName: firstName, lastName: lastName)
        return contact
    }
    
}
