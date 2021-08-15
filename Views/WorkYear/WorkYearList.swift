//
//  MonthOfYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct WorkYearList: View {
    
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
                Toggle(isOn: $showAnnual) {
                    Text("연차 사용만 표시")
                }
                
                ForEach(workData) { work in
                    NavigationLink(destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        WorkYearRow(workStatusData: work)
                            .padding([.top, .leading], 5.0)
                    }
                    
                }
            }
            
            
            
        }
    }
}

struct MonthOfYearList_Previews: PreviewProvider {
    @StateObject static var model = ModelData()
    static var previews: some View {
        Group {
            WorkYearList()
                .environmentObject(model)
        }
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
