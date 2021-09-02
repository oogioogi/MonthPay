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
                    (Months.Jan, 4),
                    (Months.Feb, 10),
                    (Months.Mar, 20),
                    (Months.Apr, 30),
                    (Months.May, 0),
                    (Months.Jun, 2),
                    (Months.Jul, 17),
                    (Months.Aug, 16),
                    (Months.Sep, 20),
                    (Months.Oct, 10),
                    (Months.Nov, 11),
                    (Months.Dec, 12),
                ]
            ),
            (
                Items.basicDuty,
                [
                    (Months.Jan, 12),
                    (Months.Feb, 13),
                    (Months.Mar, 14),
                    (Months.Apr, 15),
                    (Months.May, 16),
                    (Months.Jun, 17),
                    (Months.Jul, 18),
                    (Months.Aug, 19),
                    (Months.Sep, 20),
                    (Months.Oct, 9),
                    (Months.Nov, 8),
                    (Months.Dec, 7),
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
                    BarView(value: self.data[selectedItems].source[i].sourceData,
                            label: self.data[selectedItems].source[i].month.shortName)
                }
            }
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
