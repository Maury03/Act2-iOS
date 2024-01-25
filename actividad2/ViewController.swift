//
//  ViewController.swift
//  actividad2
//
//  Created by Diego Quintanilla  on 22/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultado: UILabel!
    @IBOutlet var numero: UILabel!
    @IBOutlet var vista: UIView!
    @IBOutlet var numUsuario: UITextField!
    
    var numeroElegido = 0
    
    var textoInput: String = ""
    var numeroInput: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numeroElegido = Int.random(in: 1...6)
        
    }


    
    @IBAction func clickAdivinar(_ sender: Any) {
        textoInput = numUsuario.text!
        numeroInput = Int(textoInput)!
        if (numeroInput == numeroElegido) {
            vista.backgroundColor = UIColor(red: 0, green: 255, blue: 0, alpha: 255)
            resultado.text = "Numero correcto"
            numero.text = String(numeroElegido)
        }else{
            vista.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 255)
            resultado.text = "Numero incorrecto"
            numero.text = String(numeroElegido)
        }
        
        numeroElegido = Int.random(in: 1...6)
    }
    
}

