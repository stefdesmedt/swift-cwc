//
//  WorkerInfoView.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import SwiftUI

struct WorkerInfoView: View {
    var body: some View {
        
        TabView {
            WorkerDetailView()
                .tabItem{
                    VStack{
                        Image(systemName: "star")
                        Text("Worker Info")
                    }
                }
            
            WorkerInfoPreferenceView()
                .tabItem{
                    VStack{
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
            
        }.environmentObject(WorkerModel())
        
        
    }
}

struct WorkerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WorkerInfoView()
    }
}
