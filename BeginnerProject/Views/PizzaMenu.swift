//
//  PizzaMenu.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 12/08/2022.
//

import SwiftUI

struct PizzaMenu: View {
    
    @ObservedObject var pizzaModel = PizzaModel()
    
    var body: some View {
        VStack {
            
            List(pizzaModel.pizzas) { pizza in
                VStack (alignment: .leading){
                    Text(pizza.name)
                        .font(.headline)
                    HStack {
                        Text(pizza.topping1)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text(pizza.topping2)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text(pizza.topping3)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                }
            }
            
            Button(action: {
                pizzaModel.addPineapple()
            }, label: {
                Text("I Like Pineapple")
            })
            
        }
        
    }
}

struct PizzaMenu_Previews: PreviewProvider {
    static var previews: some View {
        PizzaMenu()
    }
}
