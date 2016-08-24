//
//  ResultadoViewController.swift
//  miniPizza
//
//  Created by Oscar Zarco on 17/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {
    var resultado4 : String = ""
    
    @IBOutlet var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        resultadoLabel.text = resultado4
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func fin(sender: UIButton) {
        let mesaje = UIAlertController.init(title: "Conrfimar", message: "¿Su orden esta lista?", preferredStyle: UIAlertControllerStyle.Alert)
        
        let accionCofirmar = UIAlertAction(title: "Enviar Cocina", style: .Default) { accion in
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
        let accionCancelar = UIAlertAction(title: "Regresar", style: .Cancel) { accion in
        }
        mesaje.addAction(accionCofirmar)
        mesaje.addAction(accionCancelar)
        
        presentViewController(mesaje, animated: true, completion: nil)
        
        
        
        
    }
}
