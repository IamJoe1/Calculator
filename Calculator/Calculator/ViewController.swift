//
//  ViewController.swift
//  Calculator
//
//  Created by Joe on 2/6/23.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var CalculatorWork: UILabel!
    @IBOutlet weak var Results: UILabel!
    var userInput:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearInput()
        // Do any additional setup after loading the view.
    }
    
    func clearInput(){
        userInput = ""
        CalculatorWork.text = ""
        Results.text = ""
    }
    
    func appendToInput(value: String){
        userInput = userInput + value
        CalculatorWork.text = userInput
    }
    
    
    // Buttons
    
    @IBAction func SumButton(_ sender: Any) {
        let expression = NSExpression(format: userInput)
        let answer = expression.expressionValue(with: nil, context: nil)as! Double
        let answerString = formatAnswer(result:answer)
        Results.text = answerString
    }
    
    func formatAnswer(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
        
    }
    
    @IBAction func ClearButton(_ sender: Any) {
        clearInput()
    }
    @IBAction func AddButton(_ sender: Any) {
        appendToInput(value: "+")
    }
    
    @IBAction func MinusButton(_ sender: Any) {
        appendToInput(value: "-")
    }
    
    @IBAction func DecimalButton(_ sender: Any) {
        appendToInput(value:".")
    }
    
    @IBAction func ZeroButton(_ sender: Any) {
        appendToInput(value: "0")
    }
    @IBAction func OneButton(_ sender: Any) {
        appendToInput(value: "1")
    }
    @IBAction func TwoButton(_ sender: Any) {
        appendToInput(value: "2")
    }
    @IBAction func ThreeButton(_ sender: Any) {
        appendToInput(value: "3")
    }
    @IBAction func FourButton(_ sender: Any) {
        appendToInput(value: "4")
    }
    @IBAction func FiveButton(_ sender: Any) {
        appendToInput(value: "5")
    }
    @IBAction func SixButton(_ sender: Any) {
        appendToInput(value: "6")
    }
    @IBAction func SevenButton(_ sender: Any) {
        appendToInput(value: "7")
    }
    @IBAction func EightButton(_ sender: Any) {
        appendToInput(value: "8")
    }
    @IBAction func NineButton(_ sender: Any) {
        appendToInput(value: "9")
    }
    
    



}

