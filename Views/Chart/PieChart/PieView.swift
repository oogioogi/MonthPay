//
//  PieView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//
/*
 struct PieSliceData {
     var startAngle: Angle
     var endAngle: Angle
     var text: String
     var color: Color
 }
 Reduce기능은 사실 결합이라고 불려야 마땅한 기능입니다.
 리듀스는 컨테이너 내부의 콘텐츠를 하나로 합하는 기능을 실행하는 고차합수입니다.
 배열이라면 배열의 모든 값을 전달인자로 전달받은 클로저의 연살 결과로 합해줍니다.
 */
//.enumerated() Array안에 값을 가져오며 해당 값의 Index 값도 함께 가져오고 싶을 때 매우 유용하게 사용될 것 같아요 !
import SwiftUI

struct PieView: View {
    
    let values: [Double]
    var colors: [Color]
    //var backgroundColor: Color
    
    var slices: [PieSliceData] {
        let sum = values.reduce(0, +)
        var endDeg: Double = 0
        var tempSlices: [PieSliceData] = []
        
        for(i, value) in values.enumerated() {
            let degrees: Double = value * 360 / sum
            tempSlices.append(PieSliceData(startAngle: Angle(degrees: endDeg),
                                          endAngle: Angle(degrees: endDeg + degrees),
                                          text: String(format: "%0.0f%%", value * 100/sum),
                                          color: self.colors[i]))
            endDeg += degrees
        }
        return tempSlices
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<self.values.count) { i in
                    PieSliceView(pieSliceData: self.slices[i])
                }
                .frame(width: geometry.size.width, height: geometry.size.width)
                //.background(self.backgroundColor)
                .foregroundColor(.white)
            }
        }
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView(values: [13,5,3], colors: [Color.blue, Color.green, Color.orange])
        //backgroundColor: Color(red: 21/255, green: 23/255, blue: 30/255, opacity: 1.0))
    }
}
