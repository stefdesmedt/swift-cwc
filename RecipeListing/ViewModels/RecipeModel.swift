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
    
    
}
