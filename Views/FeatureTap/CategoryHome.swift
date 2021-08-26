//
//  FeatureForOneYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var selectedFlavor = Flavor.week
    
    enum Flavor {
        case day
        case week
        case month
        case year
    }
    
    var body: some View {
        
        VStack {
            Picker(selection: $selectedFlavor, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
                Text("Day").tag(Flavor.day)
                Text("Week").tag(Flavor.week)
                Text("Month").tag(Flavor.month)
                Text("Year").tag(Flavor.year)
            })
            .pickerStyle(SegmentedPickerStyle())
            .accessibility(label: Text("aaa"))
            Spacer()
        }
    }
}

struct FeatureForOneYear_Previews: PreviewProvider {
    
    @StateObject static var model = ModelData()
    
    static var previews: some View {
        CategoryHome()
            .environmentObject(model)
    }
}
