//
//  MonthOfDayRow.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct RowsInOneYear: View {
    
    var workStatusData: WorkPlanData
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            MonthBadge(workStatusData: workStatusData)
                .frame(width: 45, height: 45)
                .scaleEffect(1.0 / 7.0)
            BasicDuty(workStatusData: workStatusData)
                .frame(width: 45, height: 45)
                .scaleEffect(1.0 / 5.0)
            VacationLeave(workStatusData: workStatusData)
                .frame(width: 45, height: 45)
                .scaleEffect(1.0 / 5.0)
        }.padding()
    }
}

struct MonthOfDayRow_Previews: PreviewProvider {
    static var works = ModelData().workPlanDatas
    static var modelData = ModelData()
    static var previews: some View {
        Group {
            RowsInOneYear(workStatusData: works[0])
                .previewLayout(.fixed(width: 300, height: 150))
                .environmentObject(modelData)
            RowsInOneYear(workStatusData: works[1])
                .previewLayout(.fixed(width: 300, height: 150))
                .environmentObject(modelData)
        }
    }
}