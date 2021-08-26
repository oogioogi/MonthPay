//
//  GraphCapsule.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/23.
//

import SwiftUI

struct GraphCapsule: View {
    var index: Int
    var height: CGFloat
    var range: Range<Double>
    var overallRange: Range<Double>

    var heightRatio: CGFloat {
        max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
    }

    var offsetRatio: CGFloat {
        CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
    }
    
    // 크기
    func magnitude(of range: Range<Double>) -> Double {
        return range.upperBound - range.lowerBound
    }
    
    var body: some View {
        Rectangle() //Capsule()
            .fill(Color.white)
            .frame(height: height * heightRatio)
            .offset(x: 0, y: height * -offsetRatio)
    }
}

struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
        GraphCapsule(index: 0, height: 150, range: 10..<50, overallRange: 0..<100)
            .colorMultiply(.blue)
    }
}
