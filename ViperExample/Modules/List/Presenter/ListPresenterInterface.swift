//
//  ListPresenterInterface.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

protocol ListPresenterInterface: class {
    
    var view: ListViewInterface? { get set }
    var interactor: ListInteractorInterface? { get set }
    var wireframe: ListWireframeInterface? { get set }
    
    func viewDidLoad()
    func actionShowAdd()
    
}
