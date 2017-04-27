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
    
    //CAN I MAKE THIS BETTER WITH A CLASS?!?!?
    
    @IBAction func press9(_ sender: UIButton) {
        //if first number before or after an operator
        computeDisplay.append("9")
        //else concatenate number into current item
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
    
    //CAN I MAKE THIS BETTER WITH A CLASS?!?!?
    
    @IBAction func pressPlus(_ sender: UIButton) {
        //if last item in array is -, x, or ÷
            //replace with +
        //else
        computeDisplay.append(" + ")
        displayCalc()
    }
    
    @IBAction func pressMinus(_ sender: UIButton) {
        //if last item in array is +, x, or ÷
            //replace with -
        //else
        computeDisplay.append(" - ")
        displayCalc()
    }
    
    @IBAction func pressMultiply(_ sender: UIButton) {
        //if last item in array is +, -, or ÷
            //replace with x
        //else
        computeDisplay.append(" x ")
        displayCalc()
    }
    
    @IBAction func pressDivide(_ sender: UIButton) {
        //if last item in array is +, -, or x
            //replace with ÷
        //else
        computeDisplay.append(" ÷ ")
        displayCalc()
    }
    
    @IBAction func pressEqual(_ sender: UIButton) {
        //break apart string
        var answer = 0.0
        //calculate formula
        answerDisplay.text = "\(answer)"      //display answer
        
    }
    
    @IBAction func pressClear(_ sender: UIButton) {
        computeDisplay.removeAll()      //removes all variables from computeDisplay array
        formulaDisplay.text = ""        //sets formula label to nil
        answerDisplay.text = ""         //sets answer label to nil
    }
    
    func displayCalc() {                                    //handles display of formula in label
        var display = computeDisplay[0]
        
        for x in 1..<computeDisplay.count {
            display = display + computeDisplay[x]
        }
        formulaDisplay.text = display
    }
    
    
}

