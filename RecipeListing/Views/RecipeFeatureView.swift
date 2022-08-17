//
//  RecipeFeatureView.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import SwiftUI

struct RecipeFeatureView: View {
    
    @EnvironmentObject var model:RecipeModel
    @State var isShowingDetails = false
    @State var tabSelectionIndex = 0
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text("Featured Recipes")
                .font(.largeTitle)
                .bold()
                .padding(.leading)
            
            
            GeometryReader { geo in
                TabView (selection: $tabSelectionIndex) {
                    ForEach (0..<model.recipes.count){ index in
                        
                        if model.recipes[index].featured {
                            
                            Button(action: {
                                self.isShowingDetails = true
                            },
                                   label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                    VStack(spacing:0){
                                        Image(model.recipes[index].image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .clipped()
                                        Text(model.recipes[index].name)
                                            .padding(5)
                                           
                                    }
                                
                                }
                                
                            })
                            .tag(index)
                            .sheet(isPresented: $isShowingDetails, content: {
                            
                                RecipeDetailView(recipe: model.recipes[index])
                                
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: geo.size.width-40, height: geo.size.height-60, alignment: .center)
                                .cornerRadius(15)
                                .shadow(color: Color(.sRGB, red:0, green:0, blue: 0, opacity: 0.7), radius: 10, x: -5, y: 5)
                            
                            
                        }
                        
                    }
                   
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Preparation Time:")
                    .bold()
                Text(model.recipes[tabSelectionIndex].prepTime)
                Text("Highlights:")
                    .bold()
                RecipeHighlightView(highlights: model.recipes[tabSelectionIndex].highlights)
                    .padding(.bottom)
            }.padding(.leading)
            
        }
        .onAppear(perform: {setFeaturedIndex()})
        
    }

    func setFeaturedIndex () {
        
        var index = model.recipes.firstIndex { (recipe) -> Bool in
            return recipe.featured
        }
        tabSelectionIndex = index ?? 0
    }

}

struct RecipeFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeatureView()
            .environmentObject(RecipeModel())
    }
}
