//
//  ViewController.swift
//  pyramid_UIView
//
//  Created by Admin on 2/16/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let widthX = 375      // iPhone 8
    let heightY = 667
    let padding = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
   //             line(numberOfBoxes: 3)
        
  //      pyramidOneSide(numberOfBoxes: 15)
        
        pyramid(numberOfBoxes: 13)
        
        
    }
    
    func line(numberOfBoxes: Int ) {
        var count = 1
        let boxSize = widthX / numberOfBoxes - padding
        let halfBox = boxSize / 2
        var x = padding
        let y = (heightY / 2) - halfBox
        
        for _ in 1...numberOfBoxes {
            let box = UIView()
            box.backgroundColor = .random()
            box.frame = CGRect(x: x, y: y, width: boxSize, height: boxSize)
            view.addSubview(box)
            x = padding + (padding + boxSize) * count
            count += 1
 //           print(count)
        }
    }
    
    func pyramidOneSide(numberOfBoxes: Int ) {
        let boxSize = widthX / numberOfBoxes - padding
        let halfBox = boxSize / 2
        var x = padding
        var y = (heightY / 2) + (boxSize * numberOfBoxes)
        var countY = 1
        var boxesInLine = numberOfBoxes
        
        for _ in 1...(numberOfBoxes) {
            var countX = 1
            x = padding
            y = (heightY / 2) + ((halfBox + padding / 2 ) * numberOfBoxes) - (padding + boxSize) * (countY)
            for _ in 1...(boxesInLine) {
                let box = UIView()
                box.backgroundColor = .random()
                box.frame = CGRect(x: x, y: y, width: boxSize, height: boxSize)
                view.addSubview(box)
                x = padding * countX + boxSize * countX + padding
                countX += 1
            }
            boxesInLine -= 1
            countY += 1
        }
    }
    
    func pyramid(numberOfBoxes: Int ) {
        let boxSize = (widthX / numberOfBoxes) - padding
        let halfBox = boxSize / 2
        var x = padding
        var y = (heightY / 2) + (boxSize * numberOfBoxes)
        var countY = 1
        var boxesInLine = numberOfBoxes
        var floorShift = padding
        
        for _ in 1...(numberOfBoxes) {
            var countX = 1
            x = floorShift + (boxSize + padding) * (countX - 1)
            y = (heightY / 2) + ((halfBox + padding / 2) * numberOfBoxes) - (padding + boxSize) * (countY - 1)
            for _ in 1...(boxesInLine) {
                let box = UIView()
                box.backgroundColor = .random()
                box.frame = CGRect(x: x, y: y, width: boxSize, height: boxSize)
                view.addSubview(box)
                x = floorShift + (boxSize + padding) * (countX)
                countX += 1
            }
            boxesInLine -= 1
            floorShift = padding + halfBox * countY + (padding / 2) * countY
            countY += 1
        }
    }
    
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: .random(),
                       green: .random(),
                       blue: .random(),
                       alpha: 1.0)
    }
}
