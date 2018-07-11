//
//  MyProfileVC.swift
//  Fitme
//
//  Created by Mario Montenegro on 6/13/18.
//  Copyright © 2018 LMS. All rights reserved.
//

import UIKit

class MyProfileVC: UIViewController {
    
    @IBOutlet weak var alturaText: UILabel!
    @IBOutlet weak var pesoText: UILabel!
    @IBOutlet weak var masaMuscularText: UILabel!
    @IBOutlet weak var imcText: UILabel!
    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var sexControll: UISegmentedControl!
    
    var altura: String?
    var peso: String?
    var masaMuscular: String?
    var imc: String?
    var sex: String?
    
    
    override func viewWillAppear(_ animated: Bool) {
        avatarImg.layer.cornerRadius = 15
        altura = UserDefaults.standard.string(forKey: "Altura")
        peso = UserDefaults.standard.string(forKey: "Peso")
        masaMuscular = UserDefaults.standard.string(forKey: "MasaMuscular")
        imc = UserDefaults.standard.string(forKey: "Imc")
        if altura == nil, peso == nil, masaMuscular == nil, imc == nil {
            let alert = UIAlertController(title: "Alerta", message: "Debe primero ingresar sus medidas", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: goToHome))
            self.present(alert, animated: true, completion: nil)
        } else {
            setInfo(altura: altura!, peso: peso!, masaMuscular: masaMuscular!, imc: imc!, sex: "male")
        }
        
    }
    
    private func goToHome(_ alert: UIAlertAction) {
        performSegue(withIdentifier: "goToMesurements", sender: self)
    }
    
    @IBAction func changeSex(_ sender: UISegmentedControl) {
        
        switch sexControll.selectedSegmentIndex
        {
        case 0:
            print("Male")
            sex = "male"
            setInfo(altura: altura!, peso: peso!, masaMuscular: masaMuscular!, imc: imc!, sex: "male")
        case 1:
            print("Women")
            sex = "women"
            setInfo(altura: altura!, peso: peso!, masaMuscular: masaMuscular!, imc: imc!, sex: "women")
        default:
            break
        }
        
    }
    
    private func setInfo(altura: String, peso: String, masaMuscular: String, imc: String, sex: String) {
        if sex == "male" {
            let pesoFloat: Double = Double(peso)!
            let masaMuscularFloat: Double = Double(masaMuscular)!
            let imcFloat: Double = Double(imc)!
            if pesoFloat <= 60.00 && masaMuscularFloat >= 50.00 && imcFloat <= 17.00 {
                avatarImg.image = UIImage(named: "flacoHombre")
            } else if pesoFloat <= 80.00 && masaMuscularFloat >= 38.00 && imcFloat <= 25.00  {
                avatarImg.image = UIImage(named: "normalHombre")
            } else {
                avatarImg.image = UIImage(named: "gordoHombre")
            }
            alturaText.text = "Altura: \(altura) cm"
            pesoText.text = "Peso: \(peso) kgs"
            masaMuscularText.text = "% Masa Muscular: \(masaMuscular)"
            imcText.text = "IMC: \(imc)"
        } else {
            let pesoFloat: Double = Double(peso)!
            let masaMuscularFloat: Double = Double(masaMuscular)!
            let imcFloat: Double = Double(imc)!
            if pesoFloat <= 60.00 && masaMuscularFloat >= 50.00 && imcFloat <= 17.00 {
                avatarImg.image = UIImage(named: "flacoMujer")
            } else if pesoFloat <= 80.00 && masaMuscularFloat >= 38.00 && imcFloat <= 25.00  {
                avatarImg.image = UIImage(named: "normalMujer")
            } else {
                avatarImg.image = UIImage(named: "gordoMujer")
            }
            alturaText.text = "Altura: \(altura) cm"
            pesoText.text = "Peso: \(peso) kgs"
            masaMuscularText.text = "% Masa Muscular: \(masaMuscular)"
            imcText.text = "IMC: \(imc)"
        }
    }
    
}
