//
//  HolidayWork.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/15.
//

import SwiftUI

struct BasicDuty: View {
    
    var workData: WorkData
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0.0) {
                Rectangle()
                    .frame(width: BagesData.width, height: BagesData.height)
                    .foregroundColor(workData.duty.basicDuty ? .green : .orange)
                    .cornerRadius(30)
            }
            
            VStack(spacing: 0) {
                Image("8h")
                    .resizable()
                    .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("+" + "\(workData.overTime)" + "h")
                    .font(.system(size: 90, weight: .heavy, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(workData.overTime > 0 ? .pink : .white)
                    
            }
            CircleBadge(count: modelData.contentData.basicDutyCount)
                .offset(x: BagesData.width / 2, y: -150.0)
                .opacity(modelData.contentData.basicDutyCount > 0 ? 1.0: 0.0)
            
        }

    }
}




struct BasicDuty_Previews: PreviewProvider {
    static var works = ModelData().workDatas
    static let modelData = ModelData()
    static var previews: some View {
        BasicDuty(workData: works[0])
            .environmentObject(modelData)
    }
}
