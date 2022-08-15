//
//  ContentView.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 08/08/2022.
//

import SwiftUI

struct WarGameView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card5"
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                    .padding()
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")})
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WarGameView()
    }
}
