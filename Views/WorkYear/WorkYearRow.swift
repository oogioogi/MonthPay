//
//  MonthOfDayRow.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct WorkYearRow: View {
    
    var workStatusData: WorkStatusData
    
    var body: some View {
        HStack {
            MonthBadge(monthOfYear: "\(workStatusData.date)")
                .scaleEffect(1.0 / 6.0)
                .frame(width: 30, height: 30)
                .padding()
            HolidayWork(overTime: workStatusData.workStatus, isBageOn: true, count: 6)
                .scaleEffect(1.0 / 5.0)
                .frame(width: 50, height: 50)
                .padding()
            
        }
    }
}

struct MonthOfDayRow_Previews: PreviewProvider {
    static var works = ModelData().workStatusDatas
    static var previews: some View {
        Group {
            WorkYearRow(workStatusData: works[0])
                .previewLayout(.fixed(width: 300, height: 150))
        }
    }
}
