//
//  Rational.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 17/08/2022.
//

import Foundation

struct Rational {
    
    static func greatestCommonDivisor (_ a:Int, _ b:Int) -> Int {
        
        if a == 0 {return b}
        
        if b == 0 { return a}
        
        return greatestCommonDivisor(b, a % b)
    }
}
