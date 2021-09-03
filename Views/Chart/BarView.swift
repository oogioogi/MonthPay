//
//  BarGraph.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/01.
//

/*
 일부값 ÷ 전체값 X 100
 예제) 300에서 105는 몇 퍼센트?
 답: 35%
 */

import SwiftUI

struct BarView: View {
    
    var width: CGFloat
    var height: CGFloat
    var value: Int
    var label: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Capsule().frame(width: width, height: height)
                    .foregroundColor(Color(#colorLiteral(red: 0.5563449264, green: 0.9793745875, blue: 0.0003482861503, alpha: 1)))
                ZStack(alignment: .bottom) {
                    Capsule().frame(width: width, height: CGFloat(value)/30 * height)
                        .foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                    CircleValue(width: width - 2, height: width - 2, value: value)
                        .offset(y: CGFloat(value) <= 4 ? 0 : -(CGFloat(value)/30 * height) + 25)
                        .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1))
                }
            }
            Text(label)
                .font(.system(size: width/2))
                .padding(.top, 4)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    
    static var previews: some View {
        HStack {
            BarView(width: 25, height: 200, value: 30, label: "Ja")
            BarView(width: 25, height: 200, value: 0, label: "화")
            BarView(width: 25, height: 200, value: 6, label: "수")
            BarView(width: 25, height: 200, value: 8, label: "목")
            BarView(width: 25, height: 200, value: 2, label: "금")
//            BarView(value: 3, label: "토")
//            BarView(value: 4, label: "일")
        }
        
    }
}

