//
//  ViewController.swift
//  Calculator
//
//  Created by Fikrath Hassan on 17/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var firstValue: Float = 0
    var secondValue: Float = 0
    var result: Float = 0
    
    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var secondField: UITextField!
    @IBOutlet weak var operatorField: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    // This button click clear all the textfileds, input and result values
    @IBAction func btnClear() {
        firstValue = 0
        secondValue = 0
        result = 0
        firstField.text = "0"
        secondField.text = "0"
        operatorField.selectedSegmentIndex = 0
        resultLabel.text = ""
    }
    
    // This button click shows reult on resultLabel based on the operator selected
    @IBAction func btnResult() {
        if (firstField.text != "" && secondField.text != "") {
            firstValue = Float(firstField.text!)!
            secondValue = Float(secondField.text!)!
            switch operatorField.selectedSegmentIndex {
            case 0:
                // addition
                result = firstValue+secondValue
            case 1:
                // subtraction
                result = firstValue-secondValue
            case 2:
                // multiplication
                result = firstValue*secondValue
            case 3:
                // division
                result = firstValue/secondValue
            default:
                print("No cases detected!")
            }
            resultLabel.text = String(result)
        } else {
            print("Please enter values in textfields!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hides keyboard when touched outside textfiled, if shown
        view.addGestureRecognizer(UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:))))
    }

}
