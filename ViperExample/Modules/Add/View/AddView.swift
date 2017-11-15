//
//  AddView.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    
    var presenter: AddPresenterInterface?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.presenter?.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionCancel(_ sender: UIButton) {
        self.presenter?.actionCancel()
    }
    
    @IBAction func actionDone(_ sender: UIButton) {
        self.presenter?.actionDone(firstName: self.textFieldFirstName.text, lastName: self.textFieldLastName.text)
    }
    
}

extension AddViewController: AddViewInterface {
    
}
