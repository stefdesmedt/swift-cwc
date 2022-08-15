//
//  LearningLists.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 11/08/2022.
//

import SwiftUI

struct LearningLists: View {
    
    var array = ["War Game", "Slot Game", "Card Generator","Loopy List Practice", "Recipe App","Pizza Menu"]
    
    var body: some View {
        NavigationView {
            
            List(array, id: \.self) { arrayElement in
                NavigationLink(
                    destination: Text("Placeholder"),
                    label: {
                        Text(arrayElement)
                    })
                
            }.navigationBarTitle(Text("App List"))
            
        }
        
    }
}

struct LearningLists_Previews: PreviewProvider {
    static var previews: some View {
        LearningLists()
    }
}
