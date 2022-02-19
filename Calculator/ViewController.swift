//
//  ViewController.swift
//  Calculator
//
//  Created by Fikrath Hassan on 17/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var firstValue: Double = 0
    var secondValue: Double = 0
    var result: Double = 0
    
    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var secondField: UITextField!
    @IBOutlet weak var operatorField: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    // change textfield usability on segment click
    @IBAction func segmentOnClick() {
        if (operatorField.selectedSegmentIndex == 4) {
            secondField.isEnabled = false
        } else {
            secondField.isEnabled = true
        }
    }
    
    // This button click clear all the textfileds, input and result values
    @IBAction func btnClearOnClick() {
        firstValue = 0
        secondValue = 0
        result = 0
        firstField.text = "0"
        operatorField.selectedSegmentIndex = 0
        if (!secondField.isEnabled) {
            secondField.isEnabled = true
        }
        secondField.text = "0"
        resultLabel.text = ""
    }
    
    // This button click shows reult on resultLabel based on the operator selected
    @IBAction func btnResultOnClick() {
        if (firstField.text != "" && secondField.text != "") {
            firstValue = Double(firstField.text!)!
            secondValue = Double(secondField.text!)!
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
            case 4:
                // square root
                result = sqrt(firstValue)
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
