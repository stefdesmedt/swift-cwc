//
//  RecipeViewModel.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import Foundation

//Obs Obj needed so that the view will update when the model changes
class RecipeModel: ObservableObject {
    
    //This property is being shared with the view so updates are applied
    @Published var recipes = [Recipe]()
    
    init() {
       
        self.recipes = DataService.getRecipeData()
    }
    
    func addRecipe () {
        let newRecipe = Recipe()
        newRecipe.name = "Taco"
        newRecipe.cuisine = "Mexican"
        recipes.append(newRecipe)
    }
}

