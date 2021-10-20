//
//  ViewController.swift
//  Lab10_Generics_Calculator
//
//  Created by Dimitri SMITH on 18/10/2021.
//

import UIKit

class ViewController: UIViewController {

    // My Calculator screenView
    @IBOutlet weak var screenLabel: UILabel!
    
    // Variable I need for the logic
    var firstNumber = 0
    var secondNumber = 0
    var mathOperation = ""
    var resetLabel = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // My Calculator Keyboard Action
    @IBAction func pressNumber(_ sender: UIButton) {
        
        if resetLabel {
            screenLabel.text = ""
        }
        screenLabel.text! += String(sender.tag)
        resetLabel = false
    }
    @IBAction func mathOperation(_ sender: UIButton) {
        
        switch sender.tag {
        case 11 : // Division
            firstNumber = Int(screenLabel.text!)!
            print("Divide Number button With tag : \(sender.tag)")
            print("My First Number \(firstNumber)")
            mathOperation = "/"
            resetLabel = true
            
        case 12 : // Multiply
            firstNumber = Int(screenLabel.text!)!
            print("Multiply Number button With tag : \(sender.tag)")
            print("My First Number \(firstNumber)")
            mathOperation = "*"
            resetLabel = true
            
        case 13 : // Substract
            firstNumber = Int(screenLabel.text!)!
            print("Multiply Number button With tag : \(sender.tag)")
            print("My First Number \(firstNumber)")
            mathOperation = "-"
            resetLabel = true

        case 14 : // Addition
            firstNumber = Int(screenLabel.text!)!
            print("Addition Number button With tag : \(sender.tag)")
            print("My First Number \(firstNumber)")
            mathOperation = "+"
            resetLabel = true

        default:
            screenLabel.text = "Error"
        }
    }
    @IBAction func result(_ sender: Any) {
        
        secondNumber = Int(screenLabel.text!)!
        print("My Second Number : \(secondNumber)")
        
        if mathOperation == "/" {
            screenLabel.text = String (division(number1: firstNumber, number2: secondNumber))
            //resetLabel = true
        }
        if mathOperation == "*"{
            screenLabel.text = String(multiplyBy(number1: firstNumber, number2: secondNumber))
            //resetLabel = true
        }
        if mathOperation == "-" {
            screenLabel.text = String(substraction(number1: firstNumber, number2: secondNumber))
            //resetLabel = true
        }
        if mathOperation == "+" {
            screenLabel.text = String(addition(number1: firstNumber, number2: secondNumber))
            //resetLabel = true
        }
    }
    @IBAction func dotButton(_ sender: UIButton) {
        
        screenLabel.text! += "."
    }
    @IBAction func clearAll(_ sender: Any) {
        
        screenLabel.text = "0"
        firstNumber = 0
        secondNumber = 0
        resetLabel = true
    }
    
    // Operator functions
    func division (number1: Int, number2:Int) -> Int {
        
     return number1 / number2
    }
    
    func multiplyBy(number1: Int, number2: Int ) -> Int {
        return number1 * number2
    }
    
    func substraction(number1: Int, number2: Int) -> Int {
        return number1 - number2
    }
    
    func addition(number1: Int, number2:Int) -> Int {
        return number1 + number2
    }
    
}
