//
//  FitmeTests.swift
//  FitmeTests
//
//  Created by Mario Montenegro on 7/1/18.
//  Copyright © 2018 LMS. All rights reserved.
//

import XCTest
@testable import Fitme

class FitmeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! LoginVC
        let _ = login.view
        let username = "mario.elias"
        let password = "prueba123"
        XCTAssertTrue(login.login(username: username, password: password))
       
    }
    
    func testCalcularIMC() {
        let medidas = AddMesurementsVC()
        let peso: Double = 75
        let altura: Double = 180
        let imc: Double = 23.15
        XCTAssertEqual(imc, medidas.calcularIMC(peso: peso, altura: altura))
    }
    
}
