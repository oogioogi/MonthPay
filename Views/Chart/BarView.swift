//
//  BarGraph.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/01.
//

import SwiftUI

struct BarView: View {
    
    var value: Int
    var label: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.5563449264, green: 0.9793745875, blue: 0.0003482861503, alpha: 1)))
                ZStack {
                    Capsule().frame(width: 30, height: CGFloat(value))
                        .foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                    CircleValue(value: value)
                        .offset(y: CGFloat(-value + value/2))
                }
            }
            Text(label)
                .padding(.top, 8)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    
    static var previews: some View {
        HStack {
            BarView(value: 40, label: "월")
            BarView(value: 80, label: "화")
            BarView(value: 50, label: "수")
            BarView(value: 90, label: "목")
            BarView(value: 20, label: "금")
            BarView(value: 110, label: "토")
            BarView(value: 180, label: "일")
        }
        
    }
}

