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
    
    var userLoggedIn: Bool = false
    
    override func viewDidLoad() {
        btnLogin.backgroundColor = UIColor(red:0.96, green:0.38, blue:0.53, alpha:1.0)
        btnLogin.layer.cornerRadius = 16
    }
    
    override func viewWillAppear(_ animated: Bool) {
        editTextPassword.isSecureTextEntry = true
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        if editTextUsername.text != "" || editTextPassword.text != "" {
            userLoggedIn = login(username: editTextUsername.text!, password: editTextPassword.text! )
        }
    }
    
    func login(username: String, password: String) -> Bool {
        if username == "mario.elias" && password == "prueba123" {
            performSegue(withIdentifier: "goToHome", sender: self)
            return true
        } else {
            return false
        }
    }
}
