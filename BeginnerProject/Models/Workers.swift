//
//  Workers.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import Foundation

class Worker: ObservableObject, Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var address:String
    var company:String
    var experience:Int
    
}
