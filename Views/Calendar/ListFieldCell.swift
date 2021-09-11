//
//  ListFieldCell.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/10.
//

import SwiftUI

struct ListFieldCell: ViewModifier {
    
    var overTime: Int
    var width: CGFloat = UIScreen.main.bounds.width / 8
    var fontSize: CGFloat {
        self.width * 0.4
    }
    func body(content: Content) -> some View {
        HStack{
            content
                .font(.system(size: fontSize))
                .foregroundColor(.black)
            Text("\(overTime)")
        }
    }
}

extension View {
    func listFieldCell(overTime: Int) -> some View {
        modifier(ListFieldCell(overTime: overTime))
    }
}

struct ListFieldCell_Previews: PreviewProvider {
    static var previews: some View {
        Text("aaa").listFieldCell(overTime: 2)
    }
}
