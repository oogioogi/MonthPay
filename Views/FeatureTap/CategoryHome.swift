//
//  FeatureForOneYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    @EnvironmentObject var workDays: WorkDays
    @State private var selectedItems = 1
    
    var values: [Double] {
        var tempValues: [Double] = []
        
        for(_, value) in workDays.data[selectedItems].source.enumerated() {
            tempValues.append(value.sourceData)
        }
        return tempValues
    }
    
    var colors: [Color] = [ Color.blue, Color.gray, Color.green, Color.pink, Color.purple, Color.yellow,
                            Color.orange, Color.red, Color.black, Color.red, Color.blue, Color.gray ]
    
    var body: some View {
        GeometryReader { metry in
            VStack {
                Picker(selection: $selectedItems.animation(), label: Text(""), content: {
                    ForEach(Segments.allCases) { item in
                        Text(item.name).tag(item.rawValue)
                    }
                })
                .pickerStyle(SegmentedPickerStyle())
                
                HStack {
                    ForEach(0..<workDays.data[selectedItems].source.count, id: \.self) { i in
                        BarView(
                            width: metry.size.width/18,
                            height: 200,
                            value: workDays.data[selectedItems].source[i].sourceData,
                            label: workDays.data[selectedItems].source[i].month.shortName
                        )
                    }
                }
                PieView(values: values, colors: colors)
                    .padding()
                    .animation(.easeInOut)
                Text("\(values.count)")
            }
        }
    }
}

struct FeatureForOneYear_Previews: PreviewProvider {
    
    @StateObject static var model = ModelData()
    @StateObject static var work = WorkDays()
    
    static var previews: some View {
        CategoryHome()
            .environmentObject(model)
            .environmentObject(work)
    }
}
