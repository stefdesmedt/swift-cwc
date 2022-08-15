//
//  WorkerInfoPreferenceView.swift
//  BeginnerProject
//
//  Created by Stephanie De Smedt on 15/08/2022.
//

import SwiftUI

struct WorkerInfoPreferenceView: View {
    
    @EnvironmentObject var model:WorkerModel
    
    var body: some View {
        VStack{
            Text("Display Preferences")
            Divider()
            Toggle("Show name:", isOn: $model.showName)
            Toggle("Show address:", isOn: $model.showAddress)
            Toggle("Show company:", isOn: $model.showCompany)
            Toggle("Show experience:", isOn: $model.showExp)
            Divider()
            Spacer()
        }
    }
}

struct WorkerInfoPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        WorkerInfoPreferenceView()
    }
}
