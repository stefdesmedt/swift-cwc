//
//  RecipeHighlightView.swift
//  RecipeListing
//
//  Created by Stephanie De Smedt on 18/08/2022.
//

import SwiftUI

struct RecipeHighlightView: View {
    
    var allHighlights = ""
    
    init(highlights:[String]){
        
        for index in 0..<highlights.count {
            
            if index == highlights.count-1 {
                allHighlights += highlights[index]
            } else {
                allHighlights += highlights[index] + ", "
            }
        }
    }
    
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlightView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlightView(highlights: ["test", "test2"])
    }
}
