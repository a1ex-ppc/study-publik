//
//  ViewController.swift
//  ls3_Assignment_Block_2
//
//  Created by Admin on 3/12/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Task 1
        manhattansCostOnDepositToday(currentYear: 2020)
        
        //Task 2
        moneyForSurvive()
        
        //Task 3
        termOfSurviving()
        
        //Task 4
        reversNumber(number: 987654)
        
    }
    
    func manhattansCostOnDepositToday(currentYear: Int) {
        let yearStartOfDeposit = 1826
        let depositRate = 0.06
        var savings: Double = 24
        
        for _ in (yearStartOfDeposit + 1)...currentYear {
            savings *= (1 + depositRate)
        }
        print(Int(savings), "dollars in", currentYear, "year")
    }
    
    func moneyForSurvive() {
        let incomePerMonth = 700.00
        var expenditurePerMonth = 1000.00
        let survivalTerm = 10
        let priceIncreaseRate = 0.03
        var additionalMoney: Double = 0
        
        for _ in 1...survivalTerm {
            additionalMoney += incomePerMonth - expenditurePerMonth
            expenditurePerMonth *= 1 + priceIncreaseRate
        }
        
        print("Student must have additional", abs(Int(additionalMoney)), "UAH for survive", survivalTerm, "month")
    }
    
    func termOfSurviving() {
        let startBalance = 2400.00
        let incomePerMonth = 700.00
        var expenditurePerMonth = 1000.00
        let priceIncreaseRate = 0.03
        var survivalTerm = 0
        var resourcesForSurvive = startBalance
        
        while resourcesForSurvive > 0 {
            //         resourcesForSurvive = resourcesForSurvive - expenditurePerMonth + incomePerMonth
            resourcesForSurvive += incomePerMonth - expenditurePerMonth
            expenditurePerMonth *= 1 + priceIncreaseRate
            if resourcesForSurvive > 0 {
                survivalTerm += 1
                //               print(resourcesForSurvive)
            }
        }
        
        print(survivalTerm, "full month")
    }
    
    func reversNumber(number: Int) {
        var original = number
        var reversed = 0
        
        while original != 0 {
            reversed = (reversed * 10) + (original % 10)
            original /= 10
        }
        
        print("set number --", number, "after revers --", reversed)
    }
    
}

