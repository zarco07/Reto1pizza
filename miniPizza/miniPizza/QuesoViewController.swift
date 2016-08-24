//
//  QuesoViewController.swift
//  miniPizza
//
//  Created by Oscar Zarco on 17/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    var quesos  = ["Mozarela","Cheddar", "Parmesano","Sin Queso"]
    var indice : Int = 0
    var resultado2 : String = ""
    
    @IBOutlet var pickerQueso: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         self.pickerQueso.delegate = self
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
        
        let sigVista2 = segue.destinationViewController as! IngredientesViewController
        
        sigVista2.resultado3 = resultado2 + ", con queso: \(quesos[indice])"
        
    }
    
    
    //MARK:  UIPickerViewDataSource
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // MARK: UIPickerViewDelegate
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        indice = row
    }

}
