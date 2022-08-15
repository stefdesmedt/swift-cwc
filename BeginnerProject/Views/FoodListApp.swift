//
//  RecipeApp.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import SwiftUI

struct FoodListApp: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            Button(action: {
                model.addRecipe()
            }, label: {
                Text("Add New Recipe")
            })
            List(model.recipes) { recipe in
                VStack(alignment: .leading) {
                    Text(recipe.name)
                        .font(.headline)
                    Text(recipe.cuisine)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            
            }.padding()
            
        }
            
       
    }
}

struct FoodListApp_Previews: PreviewProvider {
    static var previews: some View {
        FoodListApp()
    }
}
