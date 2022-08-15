//
//  DataService.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import Foundation

class DataService {
    
    static func getRecipeData() -> [Recipe] {
        
        //Get the path to the JSON file
        let pathString = Bundle.main.path(forResource: "recipedata", ofType: "json")
        //Prevents errors in case file cant be foind by object binding
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
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
                    //Return data
                    return recipeData
                    
                } catch {
                    print(error)
                }
                
                } catch {
                    print(error)
                }
                
            return [Recipe]()
        }
    
    static func getWorkerData() -> [Worker] {
        
        //Get the path to the JSON file
        let pathString = Bundle.main.path(forResource: "workers", ofType: "json")
        //Prevents errors in case file cant be foind by object binding
        
        guard pathString != nil else {
            return [Worker]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
            //Create a data object within an error handling 'framework'
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
                do {
                    let workerData = try decoder.decode([Worker].self, from: data)
                    
                    //Need to set IDs so list can tell them apart
                    for worker in workerData {
                        worker.id = UUID()
                    }
                    //Return data
                    return workerData
                    
                } catch {
                    print(error)
                }
                
                } catch {
                    print(error)
                }
                
            return [Worker]()
        }
    }
    

