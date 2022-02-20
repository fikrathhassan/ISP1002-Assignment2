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
    var operatorValue: String!
    var result: Double = 0

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
    
    @IBAction func buttonOnClick(_ sender: UIButton) {
        switch sender {
        case zeroButton:
            resultLabel.text = resultLabel.text! + "0"
        case pointButton:
            resultLabel.text = resultLabel.text! + "."
        case oneButton:
            resultLabel.text = resultLabel.text! + "1"
        case twoButton:
            resultLabel.text = resultLabel.text! + "2"
        case threeButton:
            resultLabel.text = resultLabel.text! + "3"
        case fourButton:
            resultLabel.text = resultLabel.text! + "4"
        case fiveButton:
            resultLabel.text = resultLabel.text! + "5"
        case sixButton:
            resultLabel.text = resultLabel.text! + "6"
        case sevenButton:
            resultLabel.text = resultLabel.text! + "7"
        case eightButton:
            resultLabel.text = resultLabel.text! + "8"
        case nineButton:
            resultLabel.text = resultLabel.text! + "9"
        case addButton:
            operatorValue = operators.add.rawValue
            firstValue = Double(resultLabel.text!)!
            clearLabel()
        case subtractButton:
            operatorValue = operators.subtract.rawValue
            firstValue = Double(resultLabel.text!)!
            clearLabel()
        case multiplyButton:
            operatorValue = operators.multiply.rawValue
            firstValue = Double(resultLabel.text!)!
            clearLabel()
        case divideButton:
            operatorValue = operators.divide.rawValue
            firstValue = Double(resultLabel.text!)!
            clearLabel()
        case squareRootButton:
            firstValue = Double(resultLabel.text!)!
        case logButton:
            firstValue = Double(resultLabel.text!)!
        case cubeButton:
            firstValue = Double(resultLabel.text!)!
        case sinButton:
            firstValue = Double(resultLabel.text!)!
        case cosButton:
            firstValue = Double(resultLabel.text!)!
        case tanButton:
            firstValue = Double(resultLabel.text!)!
        case clearButton:
            clearLabel()
        case equalButton:
            secondValue = Double(resultLabel.text!)!
            switch operatorValue {
            case operators.add.rawValue:
                resultLabel.text = String(firstValue+secondValue)
            case operators.subtract.rawValue:
                resultLabel.text = String(firstValue-secondValue)
            case operators.multiply.rawValue:
                resultLabel.text = String(firstValue*secondValue)
            case operators.divide.rawValue:
                resultLabel.text = String(firstValue/secondValue)
            default:
                print("")
            }
        default:
            print("")
        }
    }
    
    enum operators: String {
        case add = "+", subtract = "-", multiply = "*", divide = "/"
    }
    
    func clearLabel() {
        resultLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
