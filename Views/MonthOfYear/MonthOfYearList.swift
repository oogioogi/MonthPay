//
//  MonthOfYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct MonthOfYearList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showAnnual = false
    
    var workData: [WorkStatusData] {
        return modelData.workStatusDatas.filter { work in
            (!showAnnual || work.isAnnualLeave)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(workData) { work in
                    MonthOfYearRow(workStatusData: work)
                }
            }
        }
    }
}

struct MonthOfYearList_Previews: PreviewProvider {
    static var previews: some View {
        MonthOfYearList()
    }
}

/*
    날짜: date
    요일: datOfWeek
*/


// 근무 현황: work status
// 근무 : work

// 근태 현황 : attendance status
// 연차 : annualLeave
// 월차 : monthly leave
