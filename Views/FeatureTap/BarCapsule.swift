//
//  BarCapsule.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/26.
//

import SwiftUI

struct BarCapsule: View {
    
    var barColor: Color
    var value: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(barColor)
            .scaleEffect(CGSize(width: 1.0, height: value), anchor: .bottom)
    }
}

struct BarCapsule_Previews: PreviewProvider {
    static var previews: some View {
        BarCapsule(barColor: .blue, value: 3800.0)
            .previewLayout(.sizeThatFits)
    }
}
