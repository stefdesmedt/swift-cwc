//
//  WorkerViewModel.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import Foundation

class WorkerModel: ObservableObject {
    
    //This property is being shared with the view so updates are applied
    @Published var workers = [Worker]()
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showExp = true
    
    
    init() {
       
        self.workers = DataService.getWorkerData()
    }
}
