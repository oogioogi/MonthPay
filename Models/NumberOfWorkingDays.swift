//
//  NumberOfWorkingDays.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/04.
//

import Foundation
// 피커 세그먼트
enum Segments: Int, Identifiable, CaseIterable, Hashable {
    case normalWork = 0  // 정상근무
    case holydayVacation // 휴일 휴가
    case shiftDays       // 교대 일수
    case overTime        // 연장
    case nightDuty       // 야간
    case holyDayDuty     // 휴일
    case closedDayDuty   // 휴무
    var name: String {
        return "\(self)".capitalized
    }
    var id: Segments { self }
}
// 매월
enum Monthly: Identifiable, CaseIterable, Hashable {
    case Jan
    case Feb
    case Mar
    case Apr
    case May
    case Jun
    case Jul
    case Aug
    case Sep
    case Oct
    case Nov
    case Dec
    
    var id: Monthly { self }
    
    var shortName: String {
        return String("\(self)".prefix(3)).capitalized
    }
}

final class WorkDays: ObservableObject {
    
    var data:[(selectorItems: Segments, source: [(month: Monthly, sourceData: Double)])] =
        [
            (
                Segments.normalWork,
                [
                    (Monthly.Jan, 21),
                    (Monthly.Feb, 20),
                    (Monthly.Mar, 17),
                    (Monthly.Apr, 21),
                    (Monthly.May, 19),
                    (Monthly.Jun, 18),
                    (Monthly.Jul, 17),
                    (Monthly.Aug, 16),
                    (Monthly.Sep, 17),
                    (Monthly.Oct, 18),
                    (Monthly.Nov, 22),
                    (Monthly.Dec, 21),
                ]
            ),
            (
                Segments.holydayVacation,
                [
                    (Monthly.Jan, 10),
                    (Monthly.Feb, 8),
                    (Monthly.Mar, 11),
                    (Monthly.Apr, 9),
                    (Monthly.May, 12),
                    (Monthly.Jun, 13),
                    (Monthly.Jul, 15),
                    (Monthly.Aug, 14),
                    (Monthly.Sep, 13),
                    (Monthly.Oct, 13),
                    (Monthly.Nov, 8),
                    (Monthly.Dec, 10),
                ]
            ),
            (
                Segments.shiftDays,
                [
                    (Monthly.Jan, 5),
                    (Monthly.Feb, 7),
                    (Monthly.Mar, 5),
                    (Monthly.Apr, 4),
                    (Monthly.May, 5),
                    (Monthly.Jun, 5),
                    (Monthly.Jul, 3),
                    (Monthly.Aug, 4),
                    (Monthly.Sep, 2),
                    (Monthly.Oct, 4),
                    (Monthly.Nov, 4),
                    (Monthly.Dec, 3),
                ]
            ),
            (
                Segments.overTime,
                [
                    (Monthly.Jan, 20),
                    (Monthly.Feb, 20),
                    (Monthly.Mar, 18),
                    (Monthly.Apr, 24),
                    (Monthly.May, 20),
                    (Monthly.Jun, 22),
                    (Monthly.Jul, 24),
                    (Monthly.Aug, 26),
                    (Monthly.Sep, 20),
                    (Monthly.Oct, 18),
                    (Monthly.Nov, 16),
                    (Monthly.Dec, 8),
                ]
            ),
            (
                Segments.nightDuty,
                [
                    (Monthly.Jan, 30),
                    (Monthly.Feb, 28),
                    (Monthly.Mar, 27),
                    (Monthly.Apr, 20),
                    (Monthly.May, 20),
                    (Monthly.Jun, 20),
                    (Monthly.Jul, 20),
                    (Monthly.Aug, 22),
                    (Monthly.Sep, 18),
                    (Monthly.Oct, 18),
                    (Monthly.Nov, 15),
                    (Monthly.Dec, 13),
                ]
            ),
            (
                Segments.holyDayDuty,
                [
                    (Monthly.Jan, 5),
                    (Monthly.Feb, 5),
                    (Monthly.Mar, 5),
                    (Monthly.Apr, 5),
                    (Monthly.May, 5),
                    (Monthly.Jun, 5),
                    (Monthly.Jul, 3),
                    (Monthly.Aug, 7),
                    (Monthly.Sep, 2),
                    (Monthly.Oct, 8),
                    (Monthly.Nov, 5),
                    (Monthly.Dec, 3),
                ]
            ),
            (
                Segments.closedDayDuty,
                [
                    (Monthly.Jan, 5),
                    (Monthly.Feb, 5),
                    (Monthly.Mar, 5),
                    (Monthly.Apr, 5),
                    (Monthly.May, 5),
                    (Monthly.Jun, 5),
                    (Monthly.Jul, 3),
                    (Monthly.Aug, 7),
                    (Monthly.Sep, 2),
                    (Monthly.Oct, 8),
                    (Monthly.Nov, 5),
                    (Monthly.Dec, 3),
                ]
            )
        ]
    
}


