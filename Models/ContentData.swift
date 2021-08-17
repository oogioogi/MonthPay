//
//  ContentData.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/17.
//

import Foundation

struct ContentData {
    var basicDutyCount: Int
    var vacationLeaveCount: Int
    
    static let contentData = ContentData(basicDutyCount: 3, vacationLeaveCount: 0)
}

