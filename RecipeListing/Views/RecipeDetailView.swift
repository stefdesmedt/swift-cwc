//
//  RecipeDetailView.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 13/08/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            
            
            
            //MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            //MARK: Ingredients
            VStack(alignment: .leading, spacing: 5) {
                Text("Ingredients")
                    .padding()
                    .font(.headline)
                ForEach (recipe.ingredients) { item in
                    Text("- " + item.name)
                        .font(.body)
                }
            }.padding(.bottom, 30)
            
            //MARK: Divider
            Divider()
            
            //MARK: Directions
            VStack(alignment: .leading, spacing: 5) {
                Text("Directions")
                    .font(.headline)
                    .padding()
                ForEach(0..<recipe.directions.count, id: \.self){index in
                    Text(String(index+1) + ". " + recipe.directions[index])
                        .padding(.horizontal)
                        .multilineTextAlignment(.leading)
                }
                
                
            }.padding(10)
               
        } .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create dummy recipe to see a preview
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
        
    }
}
