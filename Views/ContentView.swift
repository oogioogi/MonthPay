//
//  ContentView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tap = .list
    
    enum Tap {
        case list
        case feature
    }
    
    var body: some View {
        TabView(selection: $selection) {
            MonthOfYearList()
                .tabItem { Label("나의 근무", systemImage: "list.bullet")}
                .tag(Tap.list)
                
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
