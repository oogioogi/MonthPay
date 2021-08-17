//
//  DayIconBadge.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import SwiftUI

struct DayIconBadge: View {
    
    var workStatusData: WorkPlanData
    
    var body: some View {
        ZStack {
            Image("31")
                .resizable()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("\(workStatusData.date)")
                .font(.system(size: 140, weight: .bold, design: .rounded))
                .bold()
                .offset(x: 0.0, y: 42.0)
        }
    }
}

struct DayIconBadge_Previews: PreviewProvider {
    static var previews: some View {
        DayIconBadge(workStatusData: ModelData().workPlanDatas[0])
    }
}
