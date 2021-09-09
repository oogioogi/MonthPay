//
//  CalendarView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//

import SwiftUI

struct CalendarView: View {

    @EnvironmentObject var calendars: Calendars
    
    var dayIndex: Int {
        calendars.valuesComponent.weekday!
    }
    var startIndex: Int {
        calendars.firstComponent.day!
    }
    var endIndex: Int {
        calendars.secondComponent.day!
    }
    
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                Button("<") {
                    withAnimation {
                        calendars.sub()
                    } 
                }
                Text("\(calendars.currentYear).\(calendars.currentMonth)")
                    .padding(.horizontal)
                Button(">") {
                    withAnimation {
                        calendars.add()
                    }
                }
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(.horizontal)
            
            VStack{
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                    ForEach(0..<calendars.weekArray.count, id: \.self) { i in
                        Text(calendars.weekArray[i]).headerFieldCell(index: i)
                    }
                }
                
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                    ForEach(startIndex..<endIndex + dayIndex, id: \.self) { i in
                        self.addCount(i: i).dateFieldCell(overTime: 2, index: i)
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
    @StateObject static var calendars = Calendars()
    static var previews: some View {
        CalendarView()
            .environmentObject(calendars)
    }
}
