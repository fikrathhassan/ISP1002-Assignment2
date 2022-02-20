//
//  NewViewController.swift
//  Calculator
//
//  Created by Fikrath Hassan on 20/02/22.
//

import UIKit

class NewViewController: UIViewController {
    
    var firstValue: Double = 0
    var secondValue: Double = 0
    var operatorValue: String = operators.add.rawValue
    let error = "Please enter a value first"
    
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var squareRootButton: UIButton!
    @IBOutlet weak var cubeButton: UIButton!
    @IBOutlet weak var logButton: UIButton!
    @IBOutlet weak var sinButton: UIButton!
    @IBOutlet weak var cosButton: UIButton!
    @IBOutlet weak var tanButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var pointButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    // methods used for each button click
    @IBAction func buttonOnClick(_ sender: UIButton) {
        showInputLabel()
        switch sender {
        case zeroButton:
            inputLabel.text = inputLabel.text! + "0"
        case pointButton:
            inputLabel.text = inputLabel.text! + "."
        case oneButton:
            inputLabel.text = inputLabel.text! + "1"
        case twoButton:
            inputLabel.text = inputLabel.text! + "2"
        case threeButton:
            inputLabel.text = inputLabel.text! + "3"
        case fourButton:
            inputLabel.text = inputLabel.text! + "4"
        case fiveButton:
            inputLabel.text = inputLabel.text! + "5"
        case sixButton:
            inputLabel.text = inputLabel.text! + "6"
        case sevenButton:
            inputLabel.text = inputLabel.text! + "7"
        case eightButton:
            inputLabel.text = inputLabel.text! + "8"
        case nineButton:
            inputLabel.text = inputLabel.text! + "9"
        case addButton:
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            operatorValue = operators.add.rawValue
            clearInputLabel()
        case subtractButton:
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            operatorValue = operators.subtract.rawValue
            clearInputLabel()
        case multiplyButton:
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            operatorValue = operators.multiply.rawValue
            clearInputLabel()
        case divideButton:
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            operatorValue = operators.divide.rawValue
            clearInputLabel()
        case squareRootButton:
            // calculates square root
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            resultLabel.text = String(sqrt(firstValue))
            showResultLabel()
        case logButton:
            // calculates log
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            resultLabel.text = String(log(firstValue))
            showResultLabel()
        case cubeButton:
            // calculates cube
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            resultLabel.text = String(firstValue*firstValue*firstValue)
            showResultLabel()
        case sinButton:
            // calculates sin
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            resultLabel.text = String(sin(firstValue))
            showResultLabel()
        case cosButton:
            // calculates cos
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            resultLabel.text = String(cos(firstValue))
            showResultLabel()
        case tanButton:
            // calculates tan
            if (inputLabel.text == "") {
                print(error)
                return
            }
            firstValue = Double(inputLabel.text!)!
            resultLabel.text = String(tan(firstValue))
            showResultLabel()
        case clearButton:
            clear()
        case equalButton:
            if (inputLabel.text == "") {
                print(error)
                return
            }
            secondValue = Double(inputLabel.text!)!
            switch operatorValue {
            case operators.add.rawValue:
                // addition
                resultLabel.text = String(firstValue+secondValue)
            case operators.subtract.rawValue:
                // subtraction
                resultLabel.text = String(firstValue-secondValue)
            case operators.multiply.rawValue:
                // multiplication
                resultLabel.text = String(firstValue*secondValue)
            case operators.divide.rawValue:
                // divison
                resultLabel.text = String(firstValue/secondValue)
            default:
                print("")
            }
            showResultLabel()
        default:
            print("")
        }
    }
    
    // enumerators used avoid errors
    enum operators: String {
        case add = "+", subtract = "-", multiply = "*", divide = "/"
    }
    
    // this method clears value in inputLabel
    func clearInputLabel() {
        inputLabel.text = ""
    }
    
    /*
     this method is called when clear button is clicked. It resets everything to default values
    */
    func clear() {
        firstValue = 0
        secondValue = 0
        operatorValue = operators.add.rawValue
        showInputLabel()
        inputLabel.text = ""
        resultLabel.text = ""
    }
    
    /*
     this method shows inputLabel, when user enters input and hides resultLabel, if shown
     */
    func showInputLabel() {
        if (inputLabel.isHidden) {
            inputLabel.isHidden = false
        }
        if (!resultLabel.isHidden) {
            resultLabel.isHidden = true
        }
    }
    
    /*
     this method shows resultLabel, when user clicked for result and hides & clears inputLabel values
     */
    func showResultLabel() {
        if (!inputLabel.isHidden) {
            inputLabel.isHidden = true
        }
        if (resultLabel.isHidden) {
            resultLabel.isHidden = false
        }
        clearInputLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearInputLabel()
    }

}
