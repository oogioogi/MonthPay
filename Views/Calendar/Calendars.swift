//
//  Calendar.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/07.
//
//
import SwiftUI
import Foundation

struct Calendars: View {
    
    var calendar: Calendar {
        Calendar(identifier: .gregorian)
    }
    
// Date()
    var dates: Date {
        return Date(timeIntervalSinceNow: 0)
    }
// components
    var components: DateComponents {
        return Calendar.current.dateComponents([.year, .month], from: dates)
    }
    
//    var dayIndex: Int {
//        return getCurrentFirstWeekday()
//    }
//현재 일
    var currentDay: Int {
        return Calendar.current.component(.month, from: Date())
    }
//현재 년도
    var currentYear: String {
        return String(Calendar.current.component(.year, from: Date()))
    }
//현재 월
    var currentMonth: String {
        return String(Calendar.current.component(.month, from: Date()))
    }
//달의 첫일
    var firstDayOfMonth: Int {
        let dateComponent = Calendar.current.dateComponents([.year, .month], from: Date())
        let yearMonth: Date = Calendar.current.date(from: dateComponent)!
        let firstDay = Calendar.current.component(.weekday, from: yearMonth)
        return firstDay
    }
//firstComponent
    var firstComponent: DateComponents {
        let firstDate = calendar.date(from: components)
        let dateComponent = calendar.dateComponents([.day, .weekday, .weekOfMonth], from: firstDate!)
        return dateComponent
    }
//secondComponent
    var secondComponent: DateComponents {
        let firstDate = calendar.date(from: components)
        let nextDate = calendar.date(byAdding: .month, value: +1, to: firstDate!)
        let endDate = calendar.date(byAdding: .day, value: -1, to: nextDate!)
        let dateComponent = calendar.dateComponents([.day, .weekday, .weekOfMonth], from: endDate!)
        return dateComponent
    }
    
    var weekArray: [String] {
        let weekArray = calendar.shortWeekdaySymbols
        return weekArray
    }
//    var lastDayOfMonth: Int {
//
//    }
    
    
    var body: some View {
        VStack {
            Text("이달 시작 요일 = \(firstComponent.day!) 번째 요일 -> \(secondComponent.day!)")
            Text("이달 시작 요일 = \(firstComponent.weekday!) 번째 요일 -> \(secondComponent.weekday!)")
            Text("Symbol = \(weekArray[0])")
            Text("이달 시작 요일 = \(firstDayOfMonth) 번째 요일")
            Text("현재 날짜 = \(currentDay) 일")
            Text("\(Calendar.current.component(.year, from: dates))")
            Text("\(Calendar.current.component(.month, from: dates))")
            Text("\(Calendar.current.component(.weekday, from: Calendar.current.date(from: components)!))")
            Text("\( Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: dates))!)")
            //Text(String(("\(Calendar.current.component(.month, from: Date()))".date?.firstDayOfTheMonth.weekday)!))
   
        }
        
    }
////첫 월 1일 의 요일 위치 인트로 인덱싱
//    private func getCurrentFirstWeekday() -> Int {
//        let day = ("\(currentYear)-\(currentMonth)-1".date?.firstDayOfTheMonth.weekday)!
//        return day
//    }
//}

//extension String {
//    static var dateFomatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd"
//        return formatter
//    }()
//    var date: Date? {
//        return String.dateFomatter.date(from: self)
//    }
//}

//extension Date {
//    var weekday: Int {
//        get {
//            Calendar.current.component(.weekday, from: self)
//        }
//    }
//
//    var firstDayOfTheMonth: Date {
//        get {
//            Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
//        }
//    }
//}
}

struct Calendars_Previews: PreviewProvider {
    static var previews: some View {
        Calendars()
    }
}
