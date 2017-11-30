//
//  LoadingPresenter.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

class LoadingPresenter: LoadingPresenterInterface {
    
    var view: LoadingViewInterface?
    var interactor: LoadingInteractorInterface?
    var wireframe: LoadingWireframeInterface?
    
    func viewDidLoad() {
        Utils.delay(seconds: 2) {
            self.showMain()
        }
    }
    
    func showMain() {
        self.wireframe?.showMainScreen()
    }
    
}

extension LoadingPresenter: LoadingInteractorDelegate {
    
}
