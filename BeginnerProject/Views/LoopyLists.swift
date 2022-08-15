//
//  LoopyLists.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 11/08/2022.
//

import SwiftUI

struct LoopyLists: View {
    @State var integerArray: [Int] = []
    
    var body: some View {
        VStack{
            NavigationView {
                List (integerArray, id: \.self){ arrayElement in
                   
                    Text(String(arrayElement))
                    
                }.navigationTitle(Text("Integers..."))
            }
            Spacer()
            HStack {
                Button (
                action: {
                    
                    while !integerArray.contains(7) {
                        let randNum = Int.random(in: 1...10)
                        integerArray.append(randNum)
                    }
                    
                },
                label: {
                    Text("Add")
                        .padding()
                        .foregroundColor(.black)
                        .background(.purple)
                        .border(.black)
                        .cornerRadius(20)
                }
                )
                Button (
                action: {
                    for index in 0...integerArray.count-1 {
                        if integerArray[index] < 10 {
                            integerArray[index] = integerArray[index] + 1
                        }
                    }
                },
                label: {
                    Text("Increase")
                        .padding()
                        .foregroundColor(.black)
                        .background(.purple)
                        .border(.black)
                        .cornerRadius(20)
                }
                )
                Button (
                action: {
                    integerArray = []
                },
                label: {
                    Text("Clear")
                        .padding()
                        .foregroundColor(.black)
                        .background(.purple)
                        .border(.black)
                        .cornerRadius(20)
                }
                )
            }
            Spacer()
            Text("Objective was to create a list that on click would add numbers until 7 was reached.  A second button would increase all elements by 1.  A third button would clear the list.  Goal to practice lists and loops")
                .padding()
                .multilineTextAlignment(.center)
        }
    }
}

struct LoopyLists_Previews: PreviewProvider {
    static var previews: some View {
        LoopyLists()
    }
}
