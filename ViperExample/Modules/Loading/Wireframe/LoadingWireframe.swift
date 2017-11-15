//
//  LoadingWireframe.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

class LoadingWireframe: LoadingWireframeInterface {
    
    class func createLoadingModule() -> UIViewController {
        guard let view = self.loadingStoryboard().instantiateViewController(withIdentifier: Storyboards.Loading.LoadingViewController) as? LoadingViewController else {
            return UIViewController()
        }
        let presenter = LoadingPresenter()
        let interactor = LoadingInteractor()
        let wireframe = LoadingWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter
        
        return view
    }
    
    static func loadingStoryboard() -> UIStoryboard {
        return UIStoryboard(name: Storyboards.Loading.name, bundle: Bundle.main)
    }
    
    func showMainScreen() {
        let listWireframe = ListWireframe.createListModule()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        appDelegate.window?.rootViewController = listWireframe
    }
    
}
