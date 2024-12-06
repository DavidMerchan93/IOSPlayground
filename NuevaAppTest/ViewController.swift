//
//  ViewController.swift
//  NuevaAppTest
//
//  Created by David Merchan on 6/12/24.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var descuento: UILabel!
    
    
    @IBOutlet weak var cantidadTxt: UITextField!
    @IBOutlet weak var porcentajeTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func calcular(_ sender: UIButton) {
        guard let cantidad = cantidadTxt.text else { return }
        guard let porcentaje = porcentajeTxt.text else { return }
        
        let cant = (cantidad as NSString).floatValue
        let porc = (porcentaje as NSString).floatValue
        
        let desc = cant * porc / 100
        let total = cant - desc
        
        resultado.text = "\(total)"
        descuento.text = "\(desc)"
        
        self.view.endEditing(true)
    }
    
    @IBAction func limpiar(_ sender: UIButton) {
        resultado.text = "$ 0.00"
        descuento.text = "$ 0.00"
        cantidadTxt.text = ""
        porcentajeTxt.text = ""
    }
    
}
