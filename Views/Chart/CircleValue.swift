//
//  CircleValue.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/02.
//

import SwiftUI

struct CircleValue: View {
    
    var width: CGFloat
    var height: CGFloat
    var value: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: width, height: height)
                .foregroundColor(.blue).opacity(1.0)
                
            Text("\(value)")
                .foregroundColor(.white)
                .font(.system(size: 10, weight: .heavy, design: .rounded))
        }
    }
}

struct CircleValue_Previews: PreviewProvider {
    static var previews: some View {
        CircleValue(width: 25, height: 25, value: 100)
    }
}
