//
//  CreateAccountViewController.swift
//  LoginProject
//
//  Created by Pavan Gudur on 12/6/16.
//  Copyright © 2016 Pavan Gudur. All rights reserved.
//

import UIKit

protocol CreateAccountViewControllerDelegate {
    func accountCreated ()
}

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var chooseUsernameTextField:  UITextField!
    @IBOutlet weak var choosePasswordTextField:  UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    var delegate:CreateAccountViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func createAccountButtonPressed (sender: UIButton) {
        
        print("\(choosePasswordTextField.text!.isEmpty)")
        
        if choosePasswordTextField.text == confirmPasswordTextField.text && choosePasswordTextField.text != nil {
            
            NSUserDefaults.standardUserDefaults().setObject(self.chooseUsernameTextField.text, forKey: UserNameKey)
            NSUserDefaults.standardUserDefaults().setObject(self.choosePasswordTextField.text, forKey: PasswordKey)
            NSUserDefaults.standardUserDefaults().synchronize()
            
            self.dismissViewControllerAnimated(true, completion: nil)
            delegate?.accountCreated()
            
        }
        else {
            let alertController = UIAlertController(title: "Error", message: "There was an error creating your account, please try again", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func cancelAccountButtonPressed (sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }


}
