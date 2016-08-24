//
//  IngredientesViewController.swift
//  miniPizza
//
//  Created by Oscar Zarco on 17/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
   
    var resultado3 : String = ""
    
    @IBOutlet var jamonSw: UISwitch!
    @IBOutlet var peperoniSw: UISwitch!
    @IBOutlet var pavoSw: UISwitch!
    @IBOutlet var salchichaSw: UISwitch!
    @IBOutlet var aceitunaSw: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let sigVista = segue.destinationViewController as! ResultadoViewController
        
        var Ingredientes : String = ""
        if jamonSw.on == true {
            Ingredientes = " Jamon"
        }
        if peperoniSw.on == true{
            Ingredientes = Ingredientes + " Peperoni"
        }
        if pavoSw.on == true {
            Ingredientes = Ingredientes + " Pavo"
        }
        if salchichaSw.on == true {
            Ingredientes = Ingredientes + " Salchicha"
        }
        if aceitunaSw.on == true {
           Ingredientes = Ingredientes + " Aceitunas"
        }
        
        
        
        sigVista.resultado4 = "\(resultado3), con los ingredientes: \(Ingredientes)"
        
    }
    
    @IBAction func SiguienteButton(sender: UIButton) {
        if jamonSw.on == false && peperoniSw.on == false && pavoSw.on == false  && salchichaSw.on == false && aceitunaSw.on == false {
            let mesaje = UIAlertController.init(title: "Alto", message: "Debe indicar al menos un ingrediente", preferredStyle: UIAlertControllerStyle.Alert)
            
            let accion = UIAlertAction(title: "OK", style: .Cancel) { accion in
            }
            
            mesaje.addAction(accion)
            presentViewController(mesaje, animated: true, completion: nil)
        }
        
    }

}
