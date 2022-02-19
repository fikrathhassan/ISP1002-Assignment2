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
    var isBasicSegment: Bool = false
    
    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var secondField: UITextField!
    @IBOutlet weak var operatorField: UISegmentedControl!
    @IBOutlet weak var additionalOperatorField: UISegmentedControl!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    // unselect additional functions segment and enable result button on click
    @IBAction func segmentOnClick() {
        isBasicSegment = true
        additionalOperatorField.selectedSegmentIndex = UISegmentedControl.noSegment
        if (!secondField.isEnabled) {
            secondField.isEnabled = true
        }
        if (!resultButton.isEnabled) {
            resultButton.isEnabled = true
        }
    }
    
    // unselect basic functions segment and enable result button on click
    @IBAction func additionalSegmentOnClick() {
        isBasicSegment = false
        operatorField.selectedSegmentIndex = UISegmentedControl.noSegment
        if (secondField.isEnabled) {
            secondField.isEnabled = false
        }
        if (!resultButton.isEnabled) {
            resultButton.isEnabled = true
        }
    }
    
    /*
    this button click clear all the textfileds, input & result values and disable result button
     */
    @IBAction func btnClearOnClick() {
        firstValue = 0
        secondValue = 0
        result = 0
        firstField.text = "0"
        operatorField.selectedSegmentIndex = UISegmentedControl.noSegment
        additionalOperatorField.selectedSegmentIndex = UISegmentedControl.noSegment
        if (!secondField.isEnabled) {
            secondField.isEnabled = true
        }
        secondField.text = "0"
        if (resultButton.isEnabled) {
            resultButton.isEnabled = false
        }
        resultLabel.text = ""
    }
    
    // This button click shows reult on resultLabel based on the operator selected
    @IBAction func btnResultOnClick() {
        if (firstField.text != "" && secondField.text != "") {
            firstValue = Double(firstField.text!)!
            secondValue = Double(secondField.text!)!
            if (isBasicSegment) {
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
            } else {
                switch additionalOperatorField.selectedSegmentIndex {
                case 0:
                    // square root
                    result = sqrt(firstValue)
                case 1:
                    // log
                    result = log(firstValue)
                case 2:
                    // cube
                    result = firstValue*firstValue*firstValue
                case 3:
                    // sin
                    result = sin(firstValue)
                case 4:
                    // cos
                    result = cos(firstValue)
                case 5:
                    // tan
                    result = tan(firstValue)
                default:
                    print("No cases detected!")
                }
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
