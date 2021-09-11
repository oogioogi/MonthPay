//
//  WorkingDatas.swift
//  MonthPay
//
//  Created by 이용석 on 2021/09/11.
//

import Foundation

enum Months {
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
    
    var id: Months { self }
    
    var shortName: String {
        return String("\(self)".prefix(3)).capitalized
    }
}

enum WorkType {
    case normalWork
    case overtimeWork
    case vacationYear
    case vacatioinMonth
    case nightday
    case holydayWork
    case vacationWork
}

final class SourceDatas: ObservableObject {
    
    var datas: [(month: Monthly, days: [(day: Int, work: (type: WorkType, data: Double))])] =
        [
            (
                Monthly.Jan,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Monthly.Feb,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Monthly.Mar,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Monthly.Apr,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Monthly.May,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Monthly.Jun,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Monthly.Jul,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Monthly.Aug,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Monthly.Sep,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Monthly.Oct,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Monthly.Nov,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Monthly.Dec,
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 18.0))
                ]
            ),
        ]
}
