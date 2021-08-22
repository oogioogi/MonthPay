//
//  MonthOfDayRow.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct RowsInOneYear: View {
    
    var workData: WorkData
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                //MonthBadge(workStatusData: workStatusData)
                MonthIconBadge(workData: workData)
                    .frame(width: 45, height: 45)
                    .scaleEffect(1.0 / 5.0)
                
                BasicDuty(workData: workData)
                    .frame(width: 45, height: 45)
                    .scaleEffect(1.0 / 6.0)
                
                if workData.leave {
                    VacationLeave(workData: workData)
                        .frame(width: 45, height: 45)
                        .scaleEffect(1.0 / 6.0)
                }
   
            }.padding()
        }
    }
}

struct MonthOfDayRow_Previews: PreviewProvider {
    static var works = ModelData().workDatas
    static var modelData = ModelData()
    static var previews: some View {
        Group {
            RowsInOneYear(workData: works[0])
            RowsInOneYear(workData: works[1])
            RowsInOneYear(workData: works[2])
        }
        .previewLayout(.fixed(width: 300, height: 150))
        .environmentObject(modelData)
    }
}
