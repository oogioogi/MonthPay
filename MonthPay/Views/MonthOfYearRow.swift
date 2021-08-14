//
//  MonthOfDayRow.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import SwiftUI

struct MonthOfYearRow: View {
    
    var monthOfYear: Int
    
    var body: some View {
        HStack {
            Text("\(monthOfYear) 월")
            VStack {
                HStack {
                    Text("연차 사용: 1")
                    Spacer()
                    Text("월차 사용: 1")
                }
                HStack {
                    Text("휴일 근무: 2")
                    Text("야간 근무: 5")
                    Text("추가 근무: 1")
                }
            }.padding(.all)
        }
    }
}

struct MonthOfDayRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MonthOfYearRow(monthOfYear: 1)
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
