//
//  MonthOfYear.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct ListForOneYear: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showAnnual = false // 연차만 보여줌 토글 스위치
    
    var workData: [WorkPlanData] {
        return modelData.workPlanDatas.filter { work in
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
                        RowsInOneYear(workStatusData: work)
                        
                    }
                }
            }
            .navigationTitle("2021")
            //.animation(.easeInOut)
        }
    }
}

struct MonthOfYearList_Previews: PreviewProvider {
    @StateObject static var model = ModelData()
    static var previews: some View {
        Group {
            ListForOneYear()
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
