//
//  AddMesurementsVC.swift
//  Fitme
//
//  Created by Mario Montenegro on 6/25/18.
//  Copyright © 2018 LMS. All rights reserved.
//

import UIKit

class AddMesurementsVC: UIViewController {
    
    @IBOutlet weak var alturaEdtText: UITextField!
    @IBOutlet weak var pesoEdtText: UITextField!
    @IBOutlet weak var masaMuscularEdtText: UITextField!
    
    @IBOutlet weak var registrarMedidas: GradientView!
    
    override func viewDidLoad() {
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.enviarMedidas))
        self.registrarMedidas.addGestureRecognizer(gesture)
        alturaEdtText.keyboardType = .numbersAndPunctuation
        pesoEdtText.keyboardType = .numbersAndPunctuation
        masaMuscularEdtText.keyboardType = .numbersAndPunctuation
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        alturaEdtText.text = UserDefaults.standard.string(forKey: "Altura")
        pesoEdtText.text = UserDefaults.standard.string(forKey: "Peso")
        masaMuscularEdtText.text = UserDefaults.standard.string(forKey: "MasaMuscular")
    }

    @objc func enviarMedidas(_ sender:UITapGestureRecognizer){
        if alturaEdtText.text == "" || pesoEdtText.text == "" || masaMuscularEdtText.text == ""  {
            
        } else {
            UserDefaults.standard.set(alturaEdtText.text, forKey: "Altura")
            UserDefaults.standard.set(pesoEdtText.text, forKey: "Peso")
            UserDefaults.standard.set(masaMuscularEdtText.text, forKey: "MasaMuscular")
            
            let peso = Double(pesoEdtText.text!)
            let altura = Double(alturaEdtText.text!)
            //let alturaM: Double = altura! * 0.01
            let imc: Double = calcularIMC(peso: peso!, altura: altura!)
            UserDefaults.standard.set(String(imc), forKey: "Imc")
            
            let alert = UIAlertController(title: "Medidas Corporales", message: "Datos Actualizados Correctamente", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func calcularIMC(peso: Double, altura: Double) -> Double {
        var imcCal: Double?
        imcCal = peso/((altura * altura) / 10000)
        let imc: Double = ceil(imcCal!*100)/100
        return imc
    }
    
}
