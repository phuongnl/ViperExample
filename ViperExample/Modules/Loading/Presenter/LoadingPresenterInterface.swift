//
//  LoadingPresenterInterface.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

protocol LoadingPresenterInterface: class {
    
    var view: LoadingViewInterface? { get set }
    var interactor: LoadingInteractorInterface? { get set }
    var wireframe: LoadingWireframeInterface? { get set }
    
    func viewDidLoad()
    
}
