//
//  WorksStatusData.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import Foundation

struct WorkStatusData: Codable, Hashable, Identifiable {
    var id = UUID()
    var date: Int
    var workStatus: String
    var attendanceStatus: AttendanceStatus
}

struct AttendanceStatus: Codable, Hashable {
    var monthLeace: Bool
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
