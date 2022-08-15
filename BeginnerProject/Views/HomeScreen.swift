//
//  HomeScreen.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import SwiftUI

struct HomeScreen: View {
    
    var differentScreens = ["War Game", "Slot Game", "Card Generator","Loopy List Practice", "Recipe App","Pizza Menu"]
    
    var body: some View {
        TabView {
            VStack {
                Text("Coding With Chris Projects")
                    .font(.title)
                Divider()
                Text("Click on the second tab to view a list of the projects that I have completed as part of the Coding With Chris training program.  These projects are mostly the small exercises done along the way to test out different concepts. Bigger apps are stored separately")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.body)
                Divider()
                Image("myphoto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(40)
                Text("A photo of me - because why not!")
                    .font(.caption)
                
                
                    
            }.tabItem {
                VStack{
                    Image( systemName: "star")
                    Text("Intro Screen")
                }
                    
                }
            VStack{
                NavigationView {

                    List {
                    // MARK: War Game
                        NavigationLink(
                            destination: WarGameView(),
                            label: {
                                Text("War Game")
                            })
                    // MARK: Slot Game
                        NavigationLink(
                            destination: SlotGame(),
                            label: {
                                Text("Slot Game")
                            })
                    // MARK: Card Generator
                        NavigationLink(
                            destination: CardGeneratorView(),
                            label: {
                                Text("Card Generator")
                            })
                    //MARK: Learning Lists
                        NavigationLink(
                            destination: LearningLists(),
                            label: {
                                Text("Learning Lists")
                            })
                    //MARK: Loopy Lists
                        NavigationLink(
                            destination: LoopyLists(),
                            label: {
                                Text("Loopy Lists")
                            })
                    //MARK: Food List App
                        NavigationLink(
                            destination: FoodListApp(),
                            label: {
                                Text("Food List")
                            })
                    //MARK: Pizza Menu
                        NavigationLink(
                            destination: PizzaMenu(),
                            label: {
                                Text("Pizza Menu")
                            })
                    }.navigationBarTitle(Text("App List"))
                    
                }

            }.tabItem{
                VStack {
                    Image(systemName: "bookmark.square")
                    Text("Project List")
                }
            }
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
