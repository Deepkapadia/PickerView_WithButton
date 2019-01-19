//
//  ViewController.swift
//  Simple_PickerView_With_Botton_Swift4
//
//  Created by DeEp KapaDia on 19/05/18.
//  Copyright © 2018 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    

    @IBOutlet weak var Btn: UIButton!
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    let Names = ["Selece Your Name","Deep Kapadia","Parh Goswami","Manan Jadia","Vishnu Dhebriwala","Parth Rashiwala"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        PickerView.dataSource = self
        PickerView.delegate = self
        PickerView.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func BtnAct(_ sender: Any) {
        
        if PickerView.isHidden{
            
            PickerView.isHidden = false
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Names.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Names[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Btn.setTitle(Names[row], for: .normal)
        pickerView.isHidden = true
    }
    
    
}

