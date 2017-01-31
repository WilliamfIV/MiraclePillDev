//
//  ViewController.swift
//  MiraclePillDev
//
//  Created by William H Fulton IV on 1/21/17.
//  Copyright © 2017 IVdevelopment. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    
    
    @IBOutlet weak var stateTextField: UITextField!
    var statePicker: UIPickerView = UIPickerView()
  
   
    
    
    let states: [String] = ["alaska", "alabama", "kansas", "delaware", "michigan", "virginia", "california", "hawaii"]
        
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
       
        
        
        
        // The inputView is the default displayed view when the textField is selected.
       
        stateTextField.inputView = statePicker
        
    
    
    
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //returns statename to textfield.
        stateTextField.text = states[row]
       //makes statePicker disapear
        stateTextField.endEditing(true)

    }
    
    
    
}


