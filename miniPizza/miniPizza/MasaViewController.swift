//
//  MasaViewController.swift
//  miniPizza
//
//  Created by Oscar Zarco on 17/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    var masas  = ["Delgada","Crujiente", "Gruesa"]
    var indice : Int = 0
    var resultado1 : String = ""
    
    
    @IBOutlet var pickerMasa: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         self.pickerMasa.delegate = self
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
        let sigVista = segue.destinationViewController as! QuesoViewController
        
        sigVista.resultado2 = "La pizza es de tamaño: \(resultado1), con masa: \(masas[indice])"
    }
    

    //MARK:  UIPickerViewDataSource
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // MARK: UIPickerViewDelegate
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masas[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        indice = row
    }
    
}
