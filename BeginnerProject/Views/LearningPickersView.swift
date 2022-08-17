//
//  LearningPickers.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 17/08/2022.
//

import SwiftUI

struct LearningPickersView: View {
    
    @State var selectedIndex = 1
    
    var body: some View {
        VStack {
            Picker("Tap Me", selection: $selectedIndex) {
                Text("Option 1").tag(1)
                Text("Option 2").tag(2)
                Text("Option 3").tag(3)
            }.pickerStyle(.segmented)
                .padding()
            Text("You selected: \(selectedIndex)")
        }
        
    }
}

struct LearningPickers_Previews: PreviewProvider {
    static var previews: some View {
        LearningPickersView()
    }
}
