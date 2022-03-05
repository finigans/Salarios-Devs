//
//  ViewController.swift
//  atividade-moacir-teste
//
//  Created by Jonathan Pereira Almeida on 22/02/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var cargoTextField: UITextField!
    
    @IBOutlet weak var salarioTextField: UITextField!
    
    @IBOutlet weak var resultado: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var dev = "dev"
    var tester = "tester"
    var dba = "dba"
    var gerente = "gerente"
    var salario = 0.0
    var salarioLiquido = 0.0
    
    @IBAction func calcular(_ sender: Any) {
        
        // MARK: - TESTER
        guard let salarioo = salarioTextField?.text else { return }
        
        if cargoTextField.text == dev {
            if salario > 3000 {
                salarioLiquido = Double(salarioo)! - ((Double(salarioo))! * 10.0) / 100.0
            } else {
                salarioLiquido = Double(salarioo)! - ((Double(salarioo))! * 10.0) / 100.0
                
resultado.text = " nome : \(nomeTextField.text ?? " ") \ncargo : \(cargoTextField.text ?? " ") \nsalario liquido : \(salarioLiquido)"
        }
        
        // MARK: - DBA
        
        if  cargoTextField.text == dba || cargoTextField.text == tester {
            if salario > 2500 {
                salarioLiquido = Double(salarioo)! + ((Double(salarioo))! * 10.0) / 100.0
            } else {
                salarioLiquido = Double(salarioo)! + ((Double(salarioo))! * 10.0) / 100.0
            }
            
resultado.text = " nome : \(nomeTextField.text ?? " ") \ncargo : \(cargoTextField.text ?? " ") \nsalario liquido : \(salarioLiquido)"
        }
        
        // MARK: - GERENTE
        
        else if cargoTextField.text == gerente {
            if salario > 7000 {
                salarioLiquido = Double(salarioo)! + ((Double(salarioo))! * 10.0) / 100.0
            } else {
                salarioLiquido = Double(salarioo)! + ((Double(salarioo))! * 10.0) / 100.0
            }
            
resultado.text = " nome : \(nomeTextField.text ?? " ") \ncargo : \(cargoTextField.text ?? " ") \nsalario liquido : \(salarioLiquido)"
            
        }
        
    }

}

}
