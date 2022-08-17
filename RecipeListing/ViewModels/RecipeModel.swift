//
//  RecipeModel.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        //Create an instance of DataService
        
        self.recipes = DataService.getLocalData("recipes")
    }
    
    static func getPortion(ingredient:Ingredient, recipeServings: Int, targetServings:Int) -> String {
        
        var portion = ""
        var numerator = ingredient.num ?? 1
        var denominator = ingredient.denom ?? 1
        var wholePortions = 0
        
        if ingredient.num != nil {

            //Get single serve size
            denominator *= recipeServings
            
            //Get target serve size
            numerator *= targetServings
            
            //Reduce fraction
            let divisor = Rational.greatestCommonDivisor(numerator,denominator)
            numerator /= divisor
            denominator /= divisor
            
            //Remove whole portions
            if numerator >= denominator {
                wholePortions = numerator / denominator
                numerator = numerator % denominator
            
                //Present whole and remainder as text fraction
                portion += String(wholePortions)
            }
                if numerator > 0 {
                    portion += wholePortions > 0 ? " " : ""
                    portion += "\(numerator) / \(denominator)"
                }
                
            }
            
            if var unit = ingredient.unit {
                
                //Calculate suffix
                if wholePortions > 1 {
                    if unit.suffix(2) == "ch" {
                         unit += "es"
                    } else if unit.suffix(1) == "f" {
                        unit = String(unit.dropLast())
                        unit += "ves"
                    } else {
                        unit += "s"
                    }
                    
                }
                
                
                portion += (ingredient.num == nil && ingredient.denom == nil ? "" : " ")
                
                return portion + unit
            }
            
        
        
            return portion
        
    }
 
}
