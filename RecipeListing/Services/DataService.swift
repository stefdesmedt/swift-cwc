//
//  DataServices.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import Foundation

class DataService {
    
    static func getLocalData(_ dataSource:String = "") -> [Recipe] {
        //Parse local JSON file
        //Get url
        let pathString = Bundle.main.path(forResource: dataSource, ofType: "json")
        //Check pathString isnt nil, if it is return empty recipe array
        guard pathString != nil else {
            return [Recipe]()
        }
        
        //Create url object
        let url = URL(fileURLWithPath: pathString!)
        
        //Create data object
        do {
            let data = try Data(contentsOf: url)
            //Decode the data
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                //Add the IDs
                for recipe in recipeData {
                    recipe.id = UUID()
                }
                //Return the recipe array
                return recipeData
                
                } catch {
                    print(error)
                }
            
            } catch {
                print(error)
            }
        
        return [Recipe]()
    }
    
}
