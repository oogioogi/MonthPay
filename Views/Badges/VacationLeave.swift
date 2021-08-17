//
//  VacationLeave.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/16.
//

import SwiftUI

struct VacationLeave: View {
    
    var workStatusData: WorkPlanData
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0.0) {
                Rectangle()
                    .frame(width: BagesData.width, height: BagesData.height)
                    .foregroundColor(workStatusData.leave ? .green : .purple)
                    .cornerRadius(30)
            }
            
            VStack(spacing: 0) {
                Image("annual")
                    .resizable()
                    .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(workStatusData.attendanceStatus.annualLeave ? "연차" : "월차")
                    .font(.system(size: 90, weight: .heavy, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
            }
            
            CircleBadge(count: modelData.contentData.vacationLeaveCount)
                .offset(x: BagesData.width / 2, y: -150.0)
                .opacity(modelData.contentData.vacationLeaveCount > 0 ? 1.0 : 0.0)

        }
        
    }
}

struct VacationLeave_Previews: PreviewProvider {
    static var works = ModelData().workPlanDatas
    static let modelData = ModelData()
    static var previews: some View {
        VacationLeave(workStatusData: works[0])
            .environmentObject(modelData)
    }
}

