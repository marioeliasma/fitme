//
//  ExerciseVC.swift
//  Fitme
//
//  Created by Mario Montenegro on 6/13/18.
//  Copyright © 2018 LMS. All rights reserved.
//

import UIKit

class ExerciseVC: UIViewController {
    
    @IBOutlet weak var actividadView: GradientView!
    @IBOutlet weak var resultadosView: GradientView!
    @IBOutlet weak var medidasCorporalesView: GradientView!
    @IBOutlet weak var nutricionView: GradientView!
    
    override func viewDidLoad() {
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.addMesures))
        self.medidasCorporalesView.addGestureRecognizer(gesture)
    }
    
    @objc func addMesures(_ sender:UITapGestureRecognizer){
        performSegue(withIdentifier: "goToAddMedidas", sender: self)
    }
    
}
