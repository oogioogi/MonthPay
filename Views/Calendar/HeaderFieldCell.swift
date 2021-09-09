//
//  HeaderFieldCell.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/05.
//

import SwiftUI

struct HeaderFieldCell: ViewModifier {

    var width: CGFloat = UIScreen.main.bounds.width / 8
    var fontSize: CGFloat {
        self.width * 0.4
    }
    //var color: Color
    var index: Int
    var colorSelector: (Int) -> Color
    
    func body(content: Content) -> some View {
        ZStack(alignment: .center) {
            Circle()
                //.stroke(lineWidth: 1.0)
                .fill().foregroundColor(.blue).opacity(0.5)
                .cornerRadius(10)
                .frame(width: self.width, height: self.width)
            content
                .font(.system(size: fontSize))
                .foregroundColor(colorSelector(index))
        }

    }
    
}

extension View {
    func headerFieldCell(index: Int) -> some View {
        modifier(HeaderFieldCell(index: index, colorSelector: { _ in
            if index == 0 {
                return Color.red
            } else if index == 6 {
                return Color.blue
            }
            return Color.black
        }))
    }
}

