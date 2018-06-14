//
//  LoginVC.swift
//  Fitme
//
//  Created by Mario Montenegro on 6/13/18.
//  Copyright © 2018 LMS. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var editTextUsername: UITextField!
    @IBOutlet weak var editTextPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        btnLogin.backgroundColor = UIColor(red:0.96, green:0.38, blue:0.53, alpha:1.0)
        btnLogin.layer.cornerRadius = 16
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        if editTextUsername.text == "" || editTextPassword.text == "" {
            
        } else {
            performSegue(withIdentifier: "goToHome", sender: self)
        }
        
    }
}
