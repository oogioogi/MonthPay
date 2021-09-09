//
//  MonthPayApp.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/13.
//

import SwiftUI

@main
struct MonthPayApp: App {
    @StateObject var modelData = ModelData()
    @StateObject var workDays = WorkDays()
    @StateObject var calendars = Calendars()
    //@Environment(\.calendar) var calendar
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
                .environmentObject(workDays)
                .environmentObject(calendars)
        }
    }
}
