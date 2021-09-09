//
//  DateFieldCell.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//

import SwiftUI

struct DateFieldCell: ViewModifier {

    @State var isOnTap: Bool = false
    var width: CGFloat = UIScreen.main.bounds.width / 8
    var fontSize: CGFloat {
        self.width * 0.5
    }
    var overTime: Int
    var index: Int
    var colorSelector: (Int) -> Color

    func body(content: Content) -> some View {
  
        ZStack(alignment: .center) {
            Circle()
                //.stroke(lineWidth: 1.0)
                .fill().foregroundColor(.gray).opacity(0.3)
                .cornerRadius(10)
                .frame(width: self.width, height: self.width)
                
            content
                .font(.system(size: fontSize))
                .foregroundColor(colorSelector(index))
            
            Text(overTime <= 0 ? "" : "\(overTime)")
                .offset(x: 15, y: -20)
                .foregroundColor(Color.pink)
                
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
    func dateFieldCell(overTime: Int, index: Int) -> some View {
        modifier(DateFieldCell(overTime: overTime, index: index, colorSelector: { _ in
            if ((index % 7) == 0) {
                return Color.blue
            } else if index == 1 || index == 8 || index == 15 || index == 22 || index == 29 || index == 36 {
                return Color.red
            }
            return Color.black
        }))
    }
}
