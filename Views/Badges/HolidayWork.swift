//
//  HolidayWork.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/15.
//

import SwiftUI

struct HolidayWork: View {
    
    internal var overTime: String
    internal var isBageOn: Bool
    internal var count: Int
    internal let width = UIScreen.main.bounds.width - 100
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0.0) {
                Rectangle()
                    .frame(width: width, height: 300)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                    .cornerRadius(30)
            }
            
            VStack(spacing: 0) {
                Image("8h")
                    .resizable()
                    .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("+" + overTime + "h")
                    .font(.system(size: 90, weight: .heavy, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    
            }
            
            if isBageOn {
                CircleBage(count: count)
                    .offset(x: width / 2, y: -150.0)
            }else {
                CircleBage(count: count)
                    .opacity(0.0)
            }

        }
        
    }
}

struct CircleBage: View {
    
    var count: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.pink).opacity(1.0)
                
            Text("\(count)")
                .foregroundColor(.white)
                .font(.system(size: 60, weight: .heavy, design: .rounded))
        }
    }
}


struct HolidayWork_Previews: PreviewProvider {
    static var previews: some View {
        HolidayWork(overTime: "4", isBageOn: true, count: 7)
    }
}
