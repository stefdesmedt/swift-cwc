//
//  ContentView.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            VStack (alignment: .leading){
                
                Text("All Recipes")
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading)
                    .padding(.top, 20)
                
                ScrollView {
                    LazyVStack (alignment: .leading) {
                        ForEach(model.recipes) {
                            r in
                            NavigationLink(
                                destination: RecipeDetailView(recipe: r),
                                label: {
                                    
                                    HStack(spacing: 40) {
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .clipped()
                                            .cornerRadius(5)
                                        VStack(alignment:.leading) {
                                            Text(r.name)
                                                .foregroundColor(.black)
                                            RecipeHighlightView(highlights: r.highlights)
                                                .font(.subheadline)
                                        }.foregroundColor(.black)
                                        
                                    }
                                })
                            
                        }.padding(.horizontal, 30)
                        .navigationBarHidden(true)
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
