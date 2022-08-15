//
//  RecipeTabView.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            
            RecipeFeatureView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                    .tabItem {
                        VStack {
                            Image(systemName: "list.bullet")
                            Text("List View")
                        }
                    }
        }.environmentObject(RecipeModel())
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
