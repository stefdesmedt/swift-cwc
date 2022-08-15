//
//  GeometryPractice.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import SwiftUI

struct GeometryPractice: View {
    var body: some View {
        VStack(spacing: 0) {
        
            GeometryReader { geo in
              
                Rectangle()
                    .foregroundColor(.green)
                    .frame(height: geo.size.height)
                Rectangle()
                    .foregroundColor(.cyan)
                    .frame(width: geo.size.width * 2 / 3, height: geo.size.height/2)
                    .offset(x: geo.size.width * 1 / 6, y: geo.size.height / 4)
                Text("Exercise was focused on placing shapes in set positions")
                    .font(.title)
                    .frame(width: geo.size.width/2, height: geo.size.height/3, alignment: .center)
                    .offset(x: geo.size.width/4, y: geo.size.height/3)
                    .multilineTextAlignment(.center)

            }.ignoresSafeArea()
            
            GeometryReader { geo in
                HStack (spacing: 0){
                    Rectangle()
                        .foregroundColor(.purple)
                        .frame(width: geo.size.width/2, height: geo.size.height)
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: geo.size.width/2, height: geo.size.height)
                }
        
            }.ignoresSafeArea()
        }
    }
    
}

struct GeometryPractice_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPractice()
    }
}
