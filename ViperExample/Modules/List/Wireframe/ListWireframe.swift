//
//  ListWireframe.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

class ListWireframe: ListWireframeInterface {
    
    class func createListModule() -> UIViewController {
        let navView: UINavigationController = UIStoryboard(.main).instantiateViewController(withIdentifier: "NavListViewController")
        guard let view = navView.childViewControllers.first as? ListViewController else {
            return UIViewController()
        }
        let presenter = ListPresenter()
        let interactor = ListInteractor()
        let wireframe = ListWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter
        
        return navView
    }
    
    func showAddScreen(from view: ListViewInterface) {
        guard let delegate = view.presenter as? AddModuleDelegate else {
            return
        }
        let addWireframe = AddWireframe.createAddModule(with: delegate)
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.show(addWireframe, sender: nil)
        }
    }
    
}
