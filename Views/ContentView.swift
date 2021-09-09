//
//  ContentView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tap = .feature
    
    enum Tap {
        case list
        case feature
        case calendar
    }
    
    var body: some View {

        TabView(selection: $selection) {
            ListForOneYear()
                .tabItem { Label("Monath List", systemImage: "list.bullet")}
                .tag(Tap.list)
               

            CategoryHome()
                .tabItem { Label("Feature List", systemImage: "text.book.closed")}
                .tag(Tap.feature)
            
            CalendarView()
                .tabItem { Label("Calendar ", systemImage: "calendar")}
                .tag(Tap.calendar)
                
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .environmentObject(WorkDays())
            .environmentObject(Calendars())
    }
}
