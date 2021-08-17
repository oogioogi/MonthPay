//
//  CircleBadge.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import SwiftUI

struct CircleBadge: View {
    
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

struct CircleBadge_Previews: PreviewProvider {
    static var previews: some View {
        CircleBadge(count: 3)
    }
}
