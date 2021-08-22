//
//  WorksStatusData.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import Foundation
import SwiftUI

struct WorkData: Codable, Hashable, Identifiable {
    var id: Int
    var month: Int
    var day: Int
    var dateOfWeek: String
    var overTime: Int
    var leave: Bool
    var duty: Duty
    var vacationLeave: AttendanceStatus
    
    private var imageName: String

    var annualImage: Image? {
        leave ? Image(imageName) : nil
    }
    
}

struct AttendanceStatus: Codable, Hashable {
    var monthlyLeave: Bool
    var annualLeave: Bool
}

struct Duty: Codable, Hashable {
    var basicDuty: Bool
    var holydayDuty: Bool
    var nightDuty: Bool
}

/*
[
    {
        "date": 1
        "dateOfWeek": "월"
        "workStatus": "A",
        "attendanceStatus": {
            "monthlyLeave": false
            "annualLeave": false
        }
]
*/
