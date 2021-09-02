//
//  FeatureForOneYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import SwiftUI

enum Items: Int, Identifiable, CaseIterable, Hashable {
    case overTime = 0
    case basicDuty
    case holydayDuty
    case nightDuty
    case monthlyLeave
    case annualLeave
    var name: String {
        return "\(self)".capitalized
    }
    var id: Items { self }
}

enum Months: Identifiable, CaseIterable, Hashable {
    case Jan
    case Feb
    case Mar
    case Apr
    case May
    case Jun
    case Jul
    case Aug
    case Sep
    case Oct
    case Nov
    case Dec
    
    var id: Months { self }
    
    var shortName: String {
        return String("\(self)".prefix(3)).capitalized
    }
}

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var selectedItems = 0
    
    @State var data:[(selectorItems: Items, source: [(month: Months, sourceData: Int)])] =
        [
            (
                Items.overTime,
                [
                    (Months.Jan, 100),
                    (Months.Feb, 110),
                    (Months.Mar, 120),
                    (Months.Apr, 130),
                    (Months.May, 140),
                    (Months.Jun, 150),
                    (Months.Jul, 160),
                    (Months.Aug, 170),
                    (Months.Sep, 90),
                    (Months.Oct, 80),
                    (Months.Nov, 70),
                    (Months.Dec, 60),
                ]
            ),
            (
                Items.basicDuty,
                [
                    (Months.Jan, 100),
                    (Months.Feb, 100),
                    (Months.Mar, 100),
                    (Months.Apr, 100),
                    (Months.May, 90),
                    (Months.Jun, 90),
                    (Months.Jul, 90),
                    (Months.Aug, 90),
                    (Months.Sep, 90),
                    (Months.Oct, 80),
                    (Months.Nov, 80),
                    (Months.Dec, 80),
                ]
            )
        ]

    var body: some View {
        
        VStack {
            Picker(selection: $selectedItems.animation(), label: Text(""), content: {
                
                ForEach(Items.allCases) { item in
                    Text(item.name).tag(item.rawValue)
                }

            })
            .pickerStyle(SegmentedPickerStyle())
            
            HStack(spacing: 2) {
                ForEach(0..<self.data[selectedItems].source.count, id: \.self) { i in
                    BarView(value: self.data[selectedItems].source[i].sourceData, label: self.data[selectedItems].source[i].month.shortName)
                }
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
