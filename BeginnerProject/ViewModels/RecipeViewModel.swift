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
        //Create dummy data in recipes
        //recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
       
        //JSON CONVERSION SYNTAX
        //Get the path to the JSON file
        let pathString = Bundle.main.path(forResource: "recipedata", ofType: "json")
        //Prevents errors in case file cant be foind by object binding
        if let path = pathString {
            //create a url object
            let url = URL(fileURLWithPath: path)
            //Create a data object within an error handling 'framework'
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    //Need to set IDs so list can tell them apart
                    for recipe in recipeData {
                        recipe.id = UUID()
                    }
                    //Assign to instance
                    self.recipes = recipeData
                } catch {
                    print(error)
                }
                
                } catch {
                    print(error)
                }
        }
        
    }
    
    func addRecipe () {
        let newRecipe = Recipe()
        newRecipe.name = "Taco"
        newRecipe.cuisine = "Mexican"
        recipes.append(newRecipe)
    }
}

