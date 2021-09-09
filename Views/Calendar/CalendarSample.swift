//
//  CalendarSample.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/08.
//

//import SwiftUI
//
//fileprivate extension DateFormatter {
//    static var month: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MMMM"
//        return formatter
//    }
//    
//    static var monthAndYear: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MMMM yyyy"
//        return formatter
//    }
//}
//
//fileprivate extension Calendar {
//    func generateDates(inside interval: DateInterval, mataching components: DateComponents) -> [Date] {
//        var dates: [Date] = []
//        dates.append(interval.start)
//        
//        enumerateDates(startingAfter: interval.start,
//                       matching: components,
//                       matchingPolicy: .nextTime) { (date, _, stop) in
//            if let date = date {
//                if date < interval.end {
//                    dates.append(date)
//                }else {
//                    stop = true
//                }
//            }
//        }
//        return dates
//    }
//}
//
//struct CalendarSample<AnyView>: View where AnyView: View {
//    
//    @Environment(\.calendar) var calendar
//    
//    var interval: DateInterval
//    var showHeaders: Bool
//    var content: (Date) -> AnyView
//    
//    init(interval: DateInterval, showHeaders: Bool = true, @ViewBuilder content: @escaping (Date) -> AnyView) {
//        self.interval = interval
//        self.showHeaders = showHeaders
//        self.content = content
//    }
//    
//    var body: some View {
//        LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
//            ForEach(months, id: \.self) { month in
//                Section(header: header(for: month)) {
//                    ForEach(days(for: month), id: \.self) { date in
//                        if calendar.isDate(date, equalTo: month, toGranularity: .month) {
//                            content(date).id(date)
//                        }else {
//                            content(date).hidden()
//                        }
//                    }
//                }
//            }
//        }
//    }
//    
//    private var months: [Date] {
//        calendar.generateDates(inside: interval, mataching: DateComponents(day: 1, hour: 0, minute: 0, second: 0))
//    }
//    
//    private func days(for month: Date) -> [Date] {
//        guard let monthInterval = calendar.dateInterval(of: .month, for: month),
//              let monthFirstWeek = calendar.dateInterval(of: .weekOfMonth, for: monthInterval.start),
//              let monthLastWeek = calendar.dateInterval(of: .weekOfMonth, for: monthInterval.end)
//        else { return [] }
//        
//        return calendar.generateDates(inside: DateInterval(start: monthFirstWeek.start, end: monthLastWeek.end),
//                                      mataching: DateComponents(hour: 0, minute: 0, second: 0))
//    }
//    
//    private func header(for month: Date) -> some View {
//        let component = calendar.component(.month, from: month)
//        let formatter = component == 1 ? DateFormatter.monthAndYear : .month
//        
//        return Group {
//            if showHeaders {
//                Text(formatter.string(from: month))
//                    .font(.title)
//                    .padding()
//                    
//            }
//        }
//    }
//    
//}
//
//struct CalendarSample_Previews: PreviewProvider {
//    static var previews: some View {
//        CalendarSample(interval: .init()) { day in
//            Text("01")
//                .padding(8)
//                .background(Color.blue)
//                .cornerRadius(8)
//        }
//    }
//}

/*
 enumerateDates : 주어진 구성 요소 집합과 일치하는(또는 가장 근접하게 일치하는) 날짜를 계산하고 열거가 중지될 때까지 각 구성 요소에 대해 한 번씩 클로저를 호출합니다.
 start: 검색을 시작할 날짜입니다.
 component: 검색 알고리즘에 대한 입력으로 사용할 DateComponents입니다.
 maatchingPolicy: 입력이 모호한 결과를 생성할 때 검색 알고리즘의 동작을 결정합니다.
 
 */
