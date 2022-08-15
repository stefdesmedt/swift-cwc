//
//  SlotGame.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 10/08/2022.
//

import SwiftUI

struct SlotGame: View {
    
    var symbols = ["apple", "star", "cherry"]
    @State var firstImage = "apple"
    @State var secondImage = "apple"
    @State var thirdImage = "apple"
    @State var score = 1000
    
    var body: some View {
        VStack {
            HStack() {
                Spacer()
                Text("Credits:")
                Text(String(score))
                    .padding(.trailing, 10.0)
            }
            Spacer()
            Text("Try your luck...")
                .font(.title)
            Spacer()
            HStack {
                Spacer()
                Image(firstImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(secondImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(thirdImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button(action: {
                firstImage = symbols.randomElement()!
                secondImage = symbols.randomElement()!
                thirdImage = symbols.randomElement()!
                
                if firstImage == secondImage && secondImage == thirdImage {
                    if firstImage == "star" {
                        score += 500
                    } else if firstImage == "cherry" {
                        score += 250
                    } else if firstImage == "apple" {
                        score += 100
                    }
                
                } else {
                    score -= 50
                }
                
            }, label: {
                Text("Spin")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding()
                    .background(.pink)
                    .border(.pink)
                    .cornerRadius(20)
            })
            Spacer()
        }
    }
}

struct SlotGame_Previews: PreviewProvider {
    static var previews: some View {
        SlotGame()
    }
}
