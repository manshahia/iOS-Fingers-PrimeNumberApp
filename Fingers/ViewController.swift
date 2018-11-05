//
//  ViewController.swift
//  Fingers
//
//  Created by Ravi Inder Manshahia on 05/11/18.
//  Copyright © 2018 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    @IBAction func userGuessed(_ sender: Any) {
        
        //let diceResult = generateNumber()
        if let userEntered = Int(textField.text!)
        {
            let primeOrNot = checkIfIsPrime(number : userEntered) ? "PRIME" : "NOT Prime"
            
            resultLabel.text = "Number : \(userEntered) is \(primeOrNot)."
        
            textField.text = ""
        }
    }
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateNumber() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
 
    func checkIfIsPrime(number : Int) -> Bool
    {
        
        var isPrime = true
        //let num = 658
        var count = 2
        while(count < number) {
            print("Loop count : ", count)
            if number % count == 0
            {
                //Not prime
                isPrime = false
                break
            }
            count = count + 1
        }
        return isPrime
//        let primeOrNot = isPrime ? "PRIME" : "NOT Prime"
//        print("Number : \(num) is \(primeOrNot)")
    }
    
  


}










