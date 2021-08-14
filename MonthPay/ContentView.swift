//
//  ContentView.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/13.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView() {
            List {
                Toggle(isOn: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/){
                    Text("특근 근무")
                }
                
                ForEach(1..<13, id: \.self) { month in
                    NavigationLink(destination: Text("월별 디테일")) {
                        MonthOfYearRow(monthOfYear: month)
                          // 특근 수 별표시, 잔업/ 야근 표시
                    }
                }
                .navigationTitle("Cost Pay")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
