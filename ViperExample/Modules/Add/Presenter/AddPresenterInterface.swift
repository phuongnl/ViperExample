//
//  AddPresenterInterface.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

protocol AddPresenterInterface: class {
    
    var view: AddViewInterface? { get set }
    var interactor: AddInteractorInterface? { get set }
    var wireframe: AddWireframeInterface? { get set }
    weak var delegate: AddModuleDelegate? { get set }

    func viewDidLoad()
    func actionCancel()
    func actionDone(firstName: String?, lastName: String?)
    
}

protocol AddModuleDelegate: class {
    
    func didAddContact(_ contact: Contact)
    func didCancelAddContact()
    
}
