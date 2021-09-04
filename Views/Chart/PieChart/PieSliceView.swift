//
//  PieSliceView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/03.
//

import SwiftUI

struct PieSliceView: View {
    
    var pieSliceData: PieSliceData
    
    var midRadians: Double {
        return Double.pi / 2.0 - (pieSliceData.startAngle + pieSliceData.endAngle).radians / 2.0
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Path { path in
                    let width: CGFloat = min(geometry.size.width, geometry.size.height)
                    let heigh = width
                    let center = CGPoint(x: width * 0.5, y: heigh * 0.5)
                    
                    path.move(to: center)
                    
                    path.addArc(center: center,
                                radius: width * 0.5,
                                startAngle: Angle(degrees: -90) + pieSliceData.startAngle,
                                endAngle: Angle(degrees: -90) + pieSliceData.endAngle,
                                clockwise: false)
                }
                .fill(pieSliceData.color)
            }
            Text(pieSliceData.text)
                .position(x: geometry.size.width * 0.5 * CGFloat(1.0 + 0.78 * cos(self.midRadians)),
                          y: geometry.size.height * 0.5 * CGFloat(1.0 - 0.78 * sin(self.midRadians))
                )
                .foregroundColor(.white)
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct PieSliceData {
    var startAngle: Angle
    var endAngle: Angle
    var text: String
    var color: Color
}


struct PieSliceView_Previews: PreviewProvider {
    static var previews: some View {
        PieSliceView(pieSliceData: PieSliceData(startAngle: Angle(degrees: 0),
                                                endAngle: Angle(degrees: 90),
                                                text: "Data",
                                                color: Color.blue)
        )
    }
}
