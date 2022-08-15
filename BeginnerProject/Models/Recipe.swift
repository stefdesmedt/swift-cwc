//
//  Recipe.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name = ""
    var cuisine = ""
}

