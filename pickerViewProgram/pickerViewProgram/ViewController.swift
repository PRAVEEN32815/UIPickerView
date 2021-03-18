//
//  ViewController.swift
//  pickerViewProgram
//
//  Created by Arun Muthukumar on 01/03/21.
//  Copyright © 2021 Arun Muthukumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var detailLabel = UILabel(frame: CGRect(x: 10, y: 20, width: 100, height: 50))
    var pickData = UIPickerView(frame: CGRect(x: 200, y: 20, width: 100, height: 100))
    var safeArea : UILayoutGuide!
    
    let companies = ["Apple","Microsoft","Google","Dell"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabelSetup()
        pickDataSetup()
        pickData.delegate = self
        pickData.dataSource = self
        safeArea = view.layoutMarginsGuide
        
    }
    
    func detailLabelSetup(){
        view.addSubview(detailLabel)
    }
    
    func pickDataSetup(){
        pickData = UIPickerView()
        view.addSubview(pickData)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return companies.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return companies[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = companies[row]
    }

}

