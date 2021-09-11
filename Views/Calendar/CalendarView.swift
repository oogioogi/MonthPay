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
    var dayIndex: Int {
        calendars.valuesComponent.weekday!
    }
    var startIndex: Int {
        calendars.firstComponent.day!
    }
    var endIndex: Int {
        calendars.secondComponent.day!
    }
    var overTime: [Int] = [ 1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10]

    var overtime: Double {
        sourceDatas.datas[0].days[0].work[0].data
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
                    ForEach(startIndex..<endIndex + dayIndex, id: \.self) { i in
                        self.addCount(i: i).dateFieldCell(isOnTap: $isOnTap, overTime: overTime[i], index: i)
                            .opacity(i < dayIndex ? 0.5 : 1.0)
                    }
                }
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
    @Binding var isOnTap: Bool
    static var previews: some View {
        CalendarView()
            .environmentObject(calendars)
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
