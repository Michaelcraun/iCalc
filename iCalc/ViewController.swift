//
//  ViewController.swift
//  iCalc
//
//  Created by Michael Craun on 4/26/17.
//  Copyright © 2017 Michael Craun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var formulaDisplay: UILabel!
    @IBOutlet weak var answerDisplay: UILabel!
    
    var computeDisplay = [String]()
    var funcArr = [String]()
    var numArr = [Int]()
    
    @IBAction func press9(_ sender: UIButton) {
        computeDisplay.append("9")
        displayCalc()
    }

    @IBAction func press8(_ sender: UIButton) {
        computeDisplay.append("8")
        displayCalc()
    }
    
    @IBAction func press7(_ sender: UIButton) {
        computeDisplay.append("7")
        displayCalc()
    }
    
    @IBAction func press6(_ sender: UIButton) {
        computeDisplay.append("6")
        displayCalc()
    }
    
    @IBAction func press5(_ sender: UIButton) {
        computeDisplay.append("5")
        displayCalc()
    }
    
    @IBAction func press4(_ sender: UIButton) {
        computeDisplay.append("4")
        displayCalc()
    }
    
    @IBAction func press3(_ sender: UIButton) {
        computeDisplay.append("3")
        displayCalc()
    }
    
    @IBAction func press2(_ sender: UIButton) {
        computeDisplay.append("2")
        displayCalc()
    }
    
    @IBAction func press1(_ sender: UIButton) {
        computeDisplay.append("1")
        displayCalc()
    }
    
    @IBAction func press0(_ sender: UIButton) {
        computeDisplay.append("0")
        displayCalc()
    }
    
    @IBAction func pressPlus(_ sender: UIButton) {
        if computeDisplay.count <= 0 {
        } else {
            if computeDisplay.last == " + " || computeDisplay.last == " - " || computeDisplay.last == " x " || computeDisplay.last == " ÷ " {
                computeDisplay[computeDisplay.endIndex - 1] = " + "
                displayCalc()
            } else {
                computeDisplay.append(" + ")
                displayCalc()
            }
        }
        funcArr.append("+")
    }
    
    @IBAction func pressMinus(_ sender: UIButton) {
        if computeDisplay.count <= 0 {
        } else {
            if computeDisplay.last == " + " || computeDisplay.last == " - " || computeDisplay.last == " x " || computeDisplay.last == " ÷ " {
                computeDisplay[computeDisplay.endIndex - 1] = " - "
                displayCalc()
            } else {
                computeDisplay.append(" - ")
                displayCalc()
            }
        }
        funcArr.append("-")
    }
    
    @IBAction func pressMultiply(_ sender: UIButton) {
        if computeDisplay.count <= 0 {
        } else {
            if computeDisplay.last == " + " || computeDisplay.last == " - " || computeDisplay.last == " x " || computeDisplay.last == " ÷ " {
                computeDisplay[computeDisplay.endIndex - 1] = " x "
                displayCalc()
            } else {
                computeDisplay.append(" x ")
                displayCalc()
            }
        }
        funcArr.append("x")
    }
    
    @IBAction func pressDivide(_ sender: UIButton) {
        if computeDisplay.count <= 0 {
        } else {
            if computeDisplay.last == " + " || computeDisplay.last == " - " || computeDisplay.last == " x " || computeDisplay.last == " ÷ " {
                computeDisplay[computeDisplay.endIndex - 1] = " ÷ "
                displayCalc()
            } else {
                computeDisplay.append(" ÷ ")
                displayCalc()
            }
        }
        funcArr.append("÷")
    }
    
    @IBAction func pressEqual(_ sender: UIButton) {
        //split string
        let tempString = getString()
        var calcArr = tempString.components(separatedBy: " ")

        for x in 0..<calcArr.count {        //remove operators from array
            if calcArr[x] == "+" || calcArr[x] == "-" || calcArr[x] == "x" || calcArr[x] == "÷" {
            } else {
                var convertToNum = Int(calcArr[x])      //converts string to int
                numArr.append(convertToNum!)
            }
        }       //done
        
        for x in 0..<funcArr.count {        //temporary printer for calcArr
            print(funcArr[x])
        }
        
        for x in 0..<numArr.count {
            print(numArr[x])
        }
        
        //Calculate formula: order of operations: MDAS
        
        
        
        answerDisplay.text = "\(tempString)"      //display answer
        
    }
    
    @IBAction func pressClear(_ sender: UIButton) { //handles clearing
        computeDisplay.removeAll()      //removes all variables from compute Display
        funcArr.removeAll()             //removes all variables from funcArr
        numArr.removeAll()            //removes all variables from numArr
        formulaDisplay.text = ""        //sets formula label to nil
        answerDisplay.text = ""         //sets answer label to nil
    }   //done

    func displayCalc() {                                    //handles display of formula in label
        var display = computeDisplay[0]
        for x in 1..<computeDisplay.count {
            display = display + computeDisplay[x]
        }
        formulaDisplay.text = display
    }       //done
    
    func getString() -> String {
        var display = computeDisplay[0]
        for x in 1..<computeDisplay.count {
            display = display + computeDisplay[x]
        }
        return display
    }       //done
}

