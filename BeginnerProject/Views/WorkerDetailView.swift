//
//  WorkerDetails.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import SwiftUI

struct WorkerDetailView: View {
    
    @EnvironmentObject var model:WorkerModel
    
    var body: some View {
        
        ScrollView {
            Text("People")
                .font(.largeTitle)
                .padding()
            ForEach(model.workers) { worker in
                VStack(alignment: .leading){
                    if model.showName {
                        Text("Name: " + worker.name)
                    }
                    if model.showAddress {
                        Text("Address: " + worker.address)
                    }
                    if model.showCompany {
                        Text("Company: " + worker.company)
                    }
                    if model.showExp {
                        Text("Seniority: " + String(worker.experience))
                    }
                    Divider()
                }.padding(.horizontal)
                    .font(.subheadline)
                    
                
                
            }
        }
    }
}

struct WorkerDetails_Previews: PreviewProvider {
    static var previews: some View {
        WorkerDetailView()
    }
}
