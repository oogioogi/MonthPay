//
//  WorksStatusData.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import Foundation
import SwiftUI

struct WorkStatusData: Codable, Hashable, Identifiable {
    var id: Int
    var date: Int
    var dateOfWeek: String
    var workStatus: String
    var isAnnualLeave: Bool
    var attendanceStatus: AttendanceStatus
}

struct AttendanceStatus: Codable, Hashable {
    var monthlyLeave: Bool
    var annualLeave: Bool
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
