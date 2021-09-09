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

struct CalendarView: View {
    var weekArrays = Calendars()
    var dayIndex: Int {
        weekArrays.firstComponent.weekday!
    }
    var startIndex: Int {
        weekArrays.firstComponent.day!
    }
    var endIndex: Int {
        weekArrays.secondComponent.day!
    }
    
//    var dayOfMonth: Int {
//        
//    }
    
    var body: some View {
        VStack {
            Text("\(weekArrays.calendar.eraSymbols[0])")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            VStack{
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                    ForEach(0..<weekArrays.weekArray.count, id: \.self) { i in
                        Text(weekArrays.weekArray[i]).headerFieldCell(color: i == 0 ? .red : .black)
                    }
                }
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                    ForEach(startIndex..<endIndex + dayIndex, id: \.self) { i in
                        self.addCount(i: i).dateFieldCell(overTime: 2, color: ((i % 7) != 0) ? .green : .blue)
                            .opacity(i < dayIndex ? 0.0 : 1.0)
                    }
                }
            }
            .padding()
            Spacer()
        }
    }
    
    private func addCount(i: Int) -> some View {
        if i < dayIndex {
            return Text("")
        }
        return Text("\((i - dayIndex) + 1)")
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
