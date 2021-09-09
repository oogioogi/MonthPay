//
//  Calendars.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/09.
//

import Foundation

final class Calendars: ObservableObject {
    
    var index: Int = 0

//    init(index: Int) {
//        self.index = index
//    }
    
    var calendar: Calendar {
        Calendar(identifier: .gregorian)
    }
// Date()
    var dates: Date {
        return Date(timeIntervalSinceNow: 0)
    }
// components
    var components: DateComponents {
        return calendar.dateComponents([.year, .month], from: dates)
    }
//현재 일
    var currentDay: Int {
        return Calendar.current.component(.month, from: Date())
    }
//현재 년도
    var currentYear: String {
        let firstDate = calendar.date(from: components)
        let nextDate = calendar.date(byAdding: .month, value: index, to: firstDate!)
        return String(Calendar.current.component(.year, from: nextDate!))
    }
//현재 월
    var currentMonth: String {
        let firstDate = calendar.date(from: components)
        let nextDate = calendar.date(byAdding: .month, value: index, to: firstDate!)
        return String(Calendar.current.component(.month, from: nextDate!))
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
        let nextDate = calendar.date(byAdding: .month, value: index + 1, to: firstDate!)
        let endDate = calendar.date(byAdding: .day, value: -1, to: nextDate!)
        let dateComponent = calendar.dateComponents([.day, .weekday, .weekOfMonth], from: endDate!)
        return dateComponent
    }

    var valuesComponent: DateComponents {
        let component = calendar.date(from: components)
        let valueDate = calendar.date(byAdding: .month, value: index, to: component!)
        let dateComponent = calendar.dateComponents([.day, .weekday, .weekOfMonth], from: valueDate!)
        return dateComponent
    }
    
    var weekArray: [String] {
        let weekArray = calendar.shortWeekdaySymbols
        return weekArray
    }

    func add() {
        self.index += 1
        objectWillChange.send()
    }
    func sub() {
        self.index -= 1
        objectWillChange.send()
    }
}
