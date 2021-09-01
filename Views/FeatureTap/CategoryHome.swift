//
//  FeatureForOneYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import SwiftUI

enum Items: Identifiable {
    case overTime
    case basicDuty
//    case holydayDuty
//    case nightDuty
//    case monthlyLeave
//    case annualLeave
    
    var id: Items { self }
}

enum Months: Identifiable {
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
    
}


struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var selectedItems = Items.basicDuty
    
    @State var data =
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
            Picker(selection: $selectedItems, label: Text(""), content: {
                Text("초과근무").tag(Items.overTime)
                Text("기본근무").tag(Items.basicDuty)
//                Text("휴일근무").tag(Items.holydayDuty)
//                Text("야간근무").tag(Items.nightDuty)
//                Text("월차").tag(Items.monthlyLeave)
//                Text("연차").tag(Items.annualLeave)
            })
            .pickerStyle(SegmentedPickerStyle())
            Spacer()
            BarView(value: 40, label: "월")
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
