//
//  MonthOfDayRow.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct MonthOfYearRow: View {
    
    var workStatusData: WorkStatusData
    
    var body: some View {
        HStack {
            Text("\(workStatusData.date)월")
            VStack {
                HStack {
                    Text("연차 사용: \(workStatusData.attendanceStatus.annualLeave.description)")
                    Spacer()
                    Text("월차 사용: \(workStatusData.attendanceStatus.monthlyLeave.description)")
                    Text("근무: \(workStatusData.workStatus)")
                }

            }.padding(.all)
        }
    }
}

struct MonthOfDayRow_Previews: PreviewProvider {
    static var works = ModelData().workStatusDatas
    static var previews: some View {
        Group {
            MonthOfYearRow(workStatusData: works[0])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
