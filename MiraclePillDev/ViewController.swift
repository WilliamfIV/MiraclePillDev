//
//  ViewController.swift
//  MiraclePillDev
//
//  Created by William H Fulton IV on 1/21/17.
//  Copyright © 2017 IVdevelopment. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateButton: UIButton!
  
    let states = ["alaska", "alabama", "kansas", "delaware", "michigan", "virginia", "california", "hawaii"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        
        stateButton.isHidden = true
        
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
        
        stateButton.setTitle(states[row], for: UIControlState.normal)
        
    }
    
}

//WHY WONT PICKER VIEW SHOW UP 
//ASK AT CODE AND COFFEE!!!!!!!!!!!!!
