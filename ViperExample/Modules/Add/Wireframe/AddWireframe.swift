//
//  AddWireframe.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

class AddWireframe: AddWireframeInterface {
    
    class func createAddModule(with delegate: AddModuleDelegate) -> UIViewController {
        let navView = self.mainStoryboard().instantiateViewController(withIdentifier: Storyboards.Main.NavAddViewController)
        guard let view = navView.childViewControllers.first as? AddViewController else {
            return UIViewController()
        }
        let presenter = AddPresenter()
        let interactor = AddInteractor()
        let wireframe = AddWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        presenter.delegate = delegate
        interactor.presenter = presenter
        
        return navView
    }
    
    static func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: Storyboards.Main.name, bundle: Bundle.main)
    }
    
    func dismissAddContactInterface(from view: AddViewInterface, completion: (() -> Void)?) {
        if let _view = view as? UIViewController {
            _view.dismiss(animated: true, completion: completion)
        }
    }
    
}
