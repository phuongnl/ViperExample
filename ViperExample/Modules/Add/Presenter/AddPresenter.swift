//
//  AddPresenter.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

class AddPresenter: AddPresenterInterface {
    
    var view: AddViewInterface?
    var interactor: AddInteractorInterface?
    var wireframe: AddWireframeInterface?
    weak var delegate: AddModuleDelegate?
    var contact: Contact?
    
    func viewDidLoad() {
    }
    
    func actionCancel() {
        if let _view = self.view {
            self.wireframe?.dismissAddContactInterface(from: _view, completion: {
                self.delegate?.didCancelAddContact()
            })
        }
    }
    
    func actionDone(firstName: String?, lastName: String?) {
        let contact = self.interactor?.handleSaveContact(firstName: firstName, lastName: lastName)
        if let _view = self.view, let _contact = contact {
            self.wireframe?.dismissAddContactInterface(from: _view, completion: {
                self.delegate?.didAddContact(_contact)
            })
        }
        
    }
    
}

extension AddPresenter: AddInteractorDelegate {
    
}
