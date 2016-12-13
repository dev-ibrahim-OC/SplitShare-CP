//
//  LoginViewController.swift
//  LoginProject
//
//  Created by Pavan Gudur on 12/6/16.
//  Copyright © 2016 Pavan Gudur. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            let createAccountVC = segue.destinationViewController as! CreateAccountViewController
            createAccountVC.delegate = self
        }
    }
    
    
    @IBAction func loginButtonPressed(send: UIButton) {
        
        let usernameSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(UserNameKey) as! String
        print(usernameSavedFromNSUserDefaults)
        let passwordSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(PasswordKey) as! String
        print(passwordSavedFromNSUserDefaults)
        
        if usernameTextField.text != usernameSavedFromNSUserDefaults || passwordTextField.text != passwordSavedFromNSUserDefaults {
            let alertController = UIAlertController(title: "Error", message: "Username and Password do not match", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
            
        } else {
            self.performSegueWithIdentifier("login", sender: self)

        }
        
        
        
        func accountCreated() {
            self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
        }
        
        
    }
    @IBAction func createAccountButtonPressed(send: UIButton) {
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
        
    }
    
    
    

}
