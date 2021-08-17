//
//  WorksStatusData.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/14.
//

import Foundation
import SwiftUI

struct WorkPlanData: Codable, Hashable, Identifiable {
    var id: Int
    var date: Int
    var dateOfWeek: String
    var overTime: Int
    var isAnnualLeave: Bool
    var duty: Duty
    var attendanceStatus: AttendanceStatus
    
    private var imageName: String

    var annualImage: Image? {
        isAnnualLeave ? Image(imageName) : nil
    }
    
}

struct AttendanceStatus: Codable, Hashable {
    var monthlyLeave: Bool
    var annualLeave: Bool
}

struct Duty: Codable, Hashable {
    var basicDuty: Bool
    var holydayDuty: Bool
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
