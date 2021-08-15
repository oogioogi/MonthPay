//
//  Badge.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/15.
//  달력의 월별 출력 입니다

import SwiftUI

struct MonthBadge: View {
    
    @State var monthOfYear: String
    
    var body: some View {
        
        ZStack {
            CalendarFrame()
            CalendarHook()
            Text(monthOfYear)
                .font(.system(size: 150))
                .bold()
                .offset(y: 40.0)
        }
        
    }
}

struct CalendarFrame: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 100)
                .foregroundColor(.pink)
                
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 300)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }

}

struct CalendarHook: View {
    
    var body: some View {
        HStack{
            Circle()
                .frame(width: 50.0, height: 50.0)
                .foregroundColor(.white)
                .padding(.leading, 50)
            
            Spacer()
            
            Circle()
                .frame(width: 50.0, height: 50.0)
                .foregroundColor(.white)
            
            Spacer()
            
            Circle()
                .frame(width: 50.0, height: 50.0)
                .foregroundColor(.white)
                .padding(.trailing, 50)
        }.offset(x: 0, y: -150)
        
        HStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: 40.0, height: 130.0)
                .foregroundColor(.gray)
                .padding(.leading, 55)
            Spacer()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: 40.0, height: 130.0)
                .foregroundColor(.gray)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: 40.0, height: 130.0)
                .foregroundColor(.gray)
                .padding(.trailing, 55)
        }.offset(x: 0, y: -200)
    }
}


struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        MonthBadge(monthOfYear: "1")
    }
}
