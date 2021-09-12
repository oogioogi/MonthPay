//
//  CalendarView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//

import SwiftUI

struct CalendarView: View {

    @EnvironmentObject var calendars: Calendars
    @EnvironmentObject var sourceDatas: SourceDatas
    @State private var showDetail = false
    @State var isOnTap: Bool = false
    
    
    var makeDayArrays: [Double] {
        var makedDays: [Double] = []
        for _ in 0...dayIndex-1 {
            makedDays.append(0)
        }
        for i in 0...endIndex-1 {
            makedDays.append(sourceDatas.datas[currentMonth-1].days[i].work.data)
        }
//        for i in 0...sourceDatas.datas[currentMonth-1].days.count-1 {
//            makedDays.append(sourceDatas.datas[currentMonth-1].days[i].work.data)
//        }
        return makedDays
    }
    
    var dayIndex: Int {
        calendars.valuesComponent.weekday!
    }
    var currentMonth: Int {
        Int(calendars.currentMonth)!
    }
    var startIndex: Int {
        calendars.firstComponent.day!
    }
    var endIndex: Int {
        calendars.secondComponent.day!
    }
    
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
                    ForEach(1...makeDayArrays.count-1, id: \.self) { i in
                        self.addCount(i: i).dateFieldCell(isOnTap: $isOnTap, overTime: makeDayArrays[i], index: i) // 문제 out of range
                            .opacity(i < dayIndex ? 0.5 : 1.0)
                    }
                }
//                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
//                    ForEach(startIndex..<endIndex + dayIndex, id: \.self) { i in
//                        self.addCount(i: i).dateFieldCell(isOnTap: $isOnTap, overTime: Int(sourceDatas.datas[0].days[0].work.data), index: i) // 문제 out of range
//                            .opacity(i < dayIndex ? 0.5 : 1.0)
//                    }
//                }
                Text("startIndex =\(startIndex)")
                Text("endIndex =\(endIndex)")
                Text("dayIndex =\(dayIndex)")
                Text("makeDayArrays.count =\(makeDayArrays.count)")
                Text("currentMonth =\(currentMonth)")
                
            }
            .padding()
            if isOnTap {
                List {
                    Text("근무 형태").listFieldCell(overTime: 8)
                    Text("연장 근무").listFieldCell(overTime: 8)
                    Text("휴가").listFieldCell(overTime: 8)
                }
            }
            
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
    @StateObject static var sourceDatas = SourceDatas()
    @Binding var isOnTap: Bool
    static var previews: some View {
        CalendarView()
            .environmentObject(calendars)
            .environmentObject(sourceDatas)
    }
}


/*
 case normalWork = 0  // 정상근무
 case holydayVacation // 휴일 휴가
 case shiftDays       // 교대 일수
 case overTime        // 연장
 case nightDuty       // 야간
 case holyDayDuty     // 휴일
 case closedDayDuty   // 휴무
 */
