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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
