//
//  BarChart.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/26.
//

import SwiftUI

struct BarChart: View {
    
    var title: String
    var legend: String
    var barColor: Color
    var data: [ChartData]
    
    @State private var currentValue = ""
    @State private var currentLabel = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
                .font(.largeTitle)
            Text("Current value: (currentValue)")
                .font(.headline)
            
            GeometryReader { geometry in
                VStack {
                    HStack {
                        ForEach(0..<data.count, id: \.self) { i in
                            VStack{
                                BarCapsule(barColor: barColor, value: normalizedValue(index: i))
                                Spacer()
                                Text("\(data[i].label)")
                                    .frame(width: 40, height: 65, alignment: .bottom)
                            }
                            .animation(.spring())
                            .padding(.top)

                        }
                    }
                    if currentLabel.isEmpty {
                        Text(legend)
                            .bold()
                            .foregroundColor(.black)
                            .padding(5)
                            .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white).shadow(radius: 3))
                    } else {
                        Text(currentLabel)
                            .bold()
                            .foregroundColor(.black)
                            .padding(5)
                            .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.white).shadow(radius: 3))
                            .animation(.easeIn)
                    }
                }
            }
            
        }
        .padding()
    }
    
    func normalizedValue(index: Int) -> Double {
             var allValues: [Double]    {
                 var values = [Double]()
                 for data in data {
                     values.append(data.value)
                 }
                 return values
             }
             guard let max = allValues.max() else {
                 return 1
             }
             if max != 0 {
                 return Double(data[index].value)/Double(max)
             } else {
                 return 1
             }
    }
    
}


struct BarChart_Previews: PreviewProvider {
    
    static var previews: some View {
        BarChart(title: "sample", legend: "EUR", barColor: .blue, data: chartDataSet)
    }
}
