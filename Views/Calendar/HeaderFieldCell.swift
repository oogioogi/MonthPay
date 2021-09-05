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
        self.width * 0.5
    }
    var color: Color
    
    func body(content: Content) -> some View {
        ZStack(alignment: .center) {
            Rectangle()
                .stroke(lineWidth: 1.0)
                .frame(width: self.width, height: self.width * 1.5)
            content
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }

    }
    
}

extension View {
    func headerFieldCell(color: Color) -> some View {
        modifier(HeaderFieldCell(color:color))
    }
}

