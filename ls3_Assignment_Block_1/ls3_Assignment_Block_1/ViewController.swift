//
//  ViewController.swift
//  ls3_Assignment_Block_1
//
//  Created by Admin on 3/9/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Task 0
//        showBiggestNumber(a: 12, b: 12)
        
        // Task 1
//        calculateSquareAndCube(a: 5)
        
        // Task 2
//        printFromZeroToNumber(number: 6)
        
        // Task 3
//        howMuchDivisors(number: 13)
        
        // Task 4
        chekIfPerfect(number: 28)
        
    }

    func showBiggestNumber(a: Int, b: Int) {
        if a > b {
            print(a, "is bigger then", b)
        } else {
            if a < b {
                print(b, "is bigger then", a)
            } else {
                print(a, "are equal to", b)
            }
        }
    }
    
    func calculateSquareAndCube(a: Int) {
        let square = a * a
        let cube = square * a
        print(square, "is square of", a)
        print(cube, "is cube of", a)
    }
    
    func printFromZeroToNumber(number: Int) {
        var countUp = 0
        var countDown = number - 1
        print("increase and decrease of", number)
        for _ in (0...number - 1) {
            print(countUp, countDown)
            countUp += 1
            countDown -= 1
        }
    }
    
    func howMuchDivisors(number: Int) {
        var totalDivisors = 0
        for count in 1...number {
            if number % count == 0 {
                print(count)
                totalDivisors += 1
            }
        }
        print("total divisors", totalDivisors)
    }
    
    func chekIfPerfect(number: Int) {
        var totalDivisors = 0
        var sumAllDivisors = 0
        for count in 1...number {
            if number % count == 0 {
                totalDivisors += 1
                sumAllDivisors += count
                //                print(sumAllDivisors)
            }
        }
        let sumWithoutNumber = sumAllDivisors - number
        if sumWithoutNumber == number {
            print(number, "is perfect")
        } else {
            print(number, "not perfect!")
        }
        
    }

}

