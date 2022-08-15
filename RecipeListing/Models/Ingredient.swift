//
//  Ingredient.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import Foundation

class Ingredient: Identifiable, Decodable {
    
    var id: UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit: String?
    
}
