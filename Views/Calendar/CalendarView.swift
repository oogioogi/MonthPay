//
//  CalendarView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//

import SwiftUI

var rows: some View {
    Text("").dateFieldCell(overTime: 0, color: Color.blue)
}

var cellArray: [DateFieldCell] = []
var days: [String] = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]

struct CalendarView: View {
    var body: some View {
        VStack {
            Text("Calendar Title")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            VStack{
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                    ForEach(0..<7, id: \.self) { i in
                        Text(days[i]).headerFieldCell(color: .black)
                    }
                }
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                    ForEach(1..<36, id: \.self) { i in
                        Text("\(i)").dateFieldCell(overTime: 1, color: .blue)
                    }
                }
            }
            .padding()
            Spacer()
        }
       
        
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
