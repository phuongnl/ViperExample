//
//  User.swift
//  ViperExample
//
//  Created by Phuong Nguyen on 11/17/17.
//  Copyright © 2017 Phuong Nguyen. All rights reserved.
//

import SwiftyJSON

class User: NSObject {
    
    private(set) static var currentUser: User?
    
    var id: Int?
    var name: String?
    
    convenience init(json: JSON) {
        self.init()
        self.id = json["id"].int
        self.name = json["name"].string
    }
    
    class func setCurrentLogInUser(_ user: User) {
        self.currentUser = user
    }
    
}
