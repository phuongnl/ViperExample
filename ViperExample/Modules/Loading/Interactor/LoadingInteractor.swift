//
//  LoadingInteractor.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

class LoadingInteractor: LoadingInteractorInterface {
    
    var presenter: LoadingInteractorDelegate?
    
    func startAppService() {
        AppService.bootstrap()
    }
    
}
