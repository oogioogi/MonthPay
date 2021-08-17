//
//  Badge.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/15.
//  달력의 월별 출력 입니다

import SwiftUI

struct MonthBadge: View {
    
    var workStatusData: WorkPlanData
    
    var body: some View {
        
        ZStack {
            CalendarFrame(width: BagesData.width, height: 300.0)
            CalendarHook(width: 50.0, height: 50.0)
            Text("\(workStatusData.date)")
                .font(.system(size: 150))
                .bold()
                .foregroundColor(.white)
                .offset(y: 40.0)
        }
        
    }
}

struct CalendarFrame: View {
    
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        VStack(spacing: 0.0) {
            Rectangle()
                .frame(width: width, height: height / 3)
                .foregroundColor(.pink)
                .cornerRadius(20)
                
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
        }
    }

}

struct CalendarHook: View {
    
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        HStack{
            Circle()
                .frame(width: width, height: height)
                .foregroundColor(.white)
                .padding(.leading, 70)
            
            Spacer()
            
            Circle()
                .frame(width: width, height: height)
                .foregroundColor(.white)
            
            Spacer()
            
            Circle()
                .frame(width: width, height: height)
                .foregroundColor(.white)
                .padding(.trailing, 70)
        }.offset(x: 0, y: -150)
        
        HStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: width - 10.0, height: height * 2.5)
                .foregroundColor(.gray)
                .padding(.leading, 75)
            Spacer()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: width - 10.0, height: height * 2.5)
                .foregroundColor(.gray)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: width - 10.0, height: height * 2.5)
                .foregroundColor(.gray)
                .padding(.trailing, 75)
        }.offset(x: 0, y: -200)
    }
}


struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        MonthBadge(workStatusData: ModelData().workPlanDatas[0])
    }
}
