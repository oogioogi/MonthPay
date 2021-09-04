//
//  DateFieldCell.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//

import SwiftUI

struct DateFieldCell: View {
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous)
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                Text("31")
                    .font(.system(size: geometry.size.width * 0.4, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.width * 0.3)
                    .offset(x: geometry.size.width * 0.3, y: -geometry.size.width * 0.3)
                    
            }
        }
        
        
    }
}

struct DateFieldCell_Previews: PreviewProvider {
    static var previews: some View {
        DateFieldCell()
    }
}
