//
//  AppService.swift
//  ViperExample
//
//  Created by Phuong Nguyen on 11/17/17.
//  Copyright © 2017 Phuong Nguyen. All rights reserved.
//

import UIKit

class AppService: NSObject {
    
    class func bootstrap(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        log.verbose("Start Service")
        
//        // TabBar
//        UITabBar.appearance().barTintColor = UIColor.white
//        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: Colors.gray(),
//                                                          NSFontAttributeName: (UIFont(name: FontName.hiraginoSansW3.rawValue, size: 10) ?? UIFont.systemFont(ofSize: 10))], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: Colors.greenTabbar(),
//                                                          NSFontAttributeName: (UIFont(name: FontName.hiraginoSansW6.rawValue, size: 10) ?? UIFont.systemFont(ofSize: 10))], for: .selected)
//
//        // NavigationBar
//        let backgroundImage = #imageLiteral(resourceName: "header_bar_line").resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), resizingMode: .stretch)
//        UINavigationBar.appearance().shadowImage = UIImage()
//        UINavigationBar.appearance().setBackgroundImage(backgroundImage, for: .default)
//        UINavigationBar.appearance().tintColor = .white
//        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white,
//                                                            NSFontAttributeName: (UIFont(name: FontName.hiraginoSansW6.rawValue, size: 16) ?? UIFont.systemFont(ofSize: 16))]
//        UINavigationBar.appearance().backIndicatorImage = #imageLiteral(resourceName: "back_button_white")
//        UINavigationBar.appearance().backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "back_button_white")
    }
    
}
