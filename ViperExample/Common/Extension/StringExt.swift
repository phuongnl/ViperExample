//
//  StringExt.swift
//  ViperExample
//
//  Created by Phuong Nguyen on 12/1/17.
//  Copyright © 2017 Phuong Nguyen. All rights reserved.
//

import Foundation

extension String {
    
    func localized(comment: String? = nil) -> String {
        guard let _comment = comment else {
            return NSLocalizedString(self, comment: "")
        }
        return NSLocalizedString(self, comment: _comment)
    }
    
}
