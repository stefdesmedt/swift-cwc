//
//  NumberedCardsView.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 16/08/2022.
//

import SwiftUI

struct NumberedCardsView: View {

    var color:[[Double]]  = []
    
    var body: some View {
       
        TabView {

            ForEach (1..<21) { index in
                
                let red = Double.random(in: 0...1)
                let blue = Double.random(in: 0...1)
                let green = Double.random(in: 0...1)

                        GeometryReader { geometry in
                            
                            
                            VStack {
                                Text("Twenty Randomly Colored Rectangles")
                                    .bold()
                                    .multilineTextAlignment(.center)
                                ZStack {
                                    Rectangle()
                                    .foregroundColor(
                                        .init(red: red, green: green, blue: blue))
                                        .cornerRadius(20)
                                        .shadow(radius: 10)
                                    
                                    Image(systemName: "\(index).circle")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(40)
                                }
                            }
                                
                        }
                    }
                    .padding()
                }
        .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct NumberedCardsView_Previews: PreviewProvider {
    static var previews: some View {
        NumberedCardsView()
    }
}
