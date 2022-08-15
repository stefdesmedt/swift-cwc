//
//  PizzaViewModel.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import Foundation

//Pizza array
class PizzaModel: ObservableObject {
    
    @Published var pizzas = [Pizza]()
    
    init(){
        pizzas.append(Pizza(name:"Pepperoni", topping1: "Cheese", topping2: "Pepperoni"))
        pizzas.append(Pizza(name: "Veggie",topping1: "Cheese", topping2: "Mushroom",topping3: "Peppers"))
        pizzas.append(Pizza(name: "Ultimate",topping1: "Caramalized Onion",topping2: "Goats Cheese", topping3: "Asparagus"))
        
    }
    
    func addPineapple() {
        for item in 0...pizzas.count-1 {
            pizzas[item].topping3 = "Pineapple"
        }
    }
}
