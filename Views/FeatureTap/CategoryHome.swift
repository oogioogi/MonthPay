//
//  FeatureForOneYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import SwiftUI



struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var selectedItems = 0
    
    var values: [Double] {
        var tempValues: [Double] = []
        
        for(_, value) in modelData.data[selectedItems].source.enumerated() {
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
                    ForEach(Items.allCases) { item in
                        Text(item.name).tag(item.rawValue)
                    }
                })
                .pickerStyle(SegmentedPickerStyle())

                HStack {
                    ForEach(0..<modelData.data[selectedItems].source.count, id: \.self) { i in
                        BarView(
                            width: metry.size.width/18,
                            height: 200,
                            value: modelData.data[selectedItems].source[i].sourceData,
                            label: modelData.data[selectedItems].source[i].month.shortName
                        )
                    }
                }
                PieView(values: values, colors: colors)
                    .padding()
                    .animation(.easeInOut)
            }
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
