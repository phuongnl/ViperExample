//
//  ViewControllerExt.swift
//  ViperExample
//
//  Created by Phuong Nguyen on 12/1/17.
//  Copyright © 2017 Phuong Nguyen. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func titleView(_ titleView: Localizable) {
        self.title = titleView.rawValue.localized()
    }
    
}

