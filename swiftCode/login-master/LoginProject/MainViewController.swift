//
//  MainViewController.swift
//  LoginProject
//
//  Created by Pavan Gudur on 12/6/16.
//  Copyright © 2016 Pavan Gudur. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

     
        
        nusernameLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kUserNameKey) as? String
        passwordLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as?  String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
