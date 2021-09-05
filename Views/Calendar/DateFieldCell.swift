//
//  DateFieldCell.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//

import SwiftUI

struct DateFieldCell: ViewModifier {

    var width: CGFloat = UIScreen.main.bounds.width / 8
    var fontSize: CGFloat {
        self.width * 0.6
    }
    var overTime: Int
    var color: Color
    @State var isOnTap: Bool = false
    
    func body(content: Content) -> some View {
        ZStack(alignment: .top) {
            Rectangle()
                .stroke(lineWidth: 1.0)
                .frame(width: self.width, height: self.width * 1.5)
                
            content
                .font(.system(size: fontSize))
                .foregroundColor(color)
                .foregroundColor(.black)
            
            Text(overTime <= 0 ? "" : "\(overTime)")
                .offset(x: 10, y: 40)
                .foregroundColor(overTime > 0 ? Color.red : Color.gray)
                
        }
        .onTapGesture {
            isOnTap.toggle()
        }
        .alert(isPresented: $isOnTap) {
            Alert(title: Text("content"), message: Text("\(overTime)"), dismissButton: .cancel())
        }
    }
    
}

extension View {
    func dateFieldCell(overTime: Int, color: Color) -> some View {
        modifier(DateFieldCell(overTime: overTime, color:color))
    }
}
