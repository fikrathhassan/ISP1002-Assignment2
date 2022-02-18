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
    
    @IBAction func btnClear() {
        
    }
    @IBAction func btnResult() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
