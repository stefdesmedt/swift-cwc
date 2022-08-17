//
//  RecipeDetailView.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 13/08/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    @State var servingSize = 2
    
    var body: some View {
        ScrollView {
            
            
            
            //MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            Text(recipe.name)
                .bold()
                .padding(.vertical, 20)
                .padding(.leading)
                .font(.largeTitle)
                
            VStack (alignment: .leading) {
                Text("Select your serving size")
                Picker("", selection: $servingSize) {
                    Text("2").tag(2)
                    Text("4").tag(4)
                    Text("6").tag(6)
                    Text("8").tag(8)
                }.pickerStyle(SegmentedPickerStyle())
                 .frame(width: 160)
            }
            
            
            //MARK: Ingredients
            VStack(alignment: .leading, spacing: 5) {
                Text("Ingredients")
                    .padding()
                    .font(.headline)
                ForEach (recipe.ingredients) { item in
                    Text("• " + RecipeModel.getPortion(ingredient: item, recipeServings: recipe.servings, targetServings: servingSize) + " " + item.name.lowercased())
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
               
        }.navigationBarHidden(true)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create dummy recipe to see a preview
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
        
    }
}
