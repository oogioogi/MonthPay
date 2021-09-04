//
//  ModelData.swift
//  MonthPay
//
//  Created by 이용석 on 2021/08/15.
//

import Foundation
import Combine

enum Items: Int, Identifiable, CaseIterable, Hashable {
    case overTime = 0
    case basicDuty
    case holydayDuty
    case nightDuty
    case monthlyLeave
    case annualLeave
    var name: String {
        return "\(self)".capitalized
    }
    var id: Items { self }
}

enum Months: Identifiable, CaseIterable, Hashable {
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

final class ModelData: ObservableObject {
    @Published var workDatas: [WorkData] = load("workJson.json")
    @Published var contentData = ContentData.contentData
//    var sss: [String] = [
//        OverTime.day,
//
//
//    ]
    
    
    
    var data:[(selectorItems: Items, source: [(month: Months, sourceData: Double)])] =
        [
            (
                Items.overTime,
                [
                    (Months.Jan, 4),
                    (Months.Feb, 10),
                    (Months.Mar, 20),
                    (Months.Apr, 30),
                    (Months.May, 0),
                    (Months.Jun, 2),
                    (Months.Jul, 17),
                    (Months.Aug, 16),
                    (Months.Sep, 20),
                    (Months.Oct, 10),
                    (Months.Nov, 11),
                    (Months.Dec, 12),
                ]
            ),
            (
                Items.basicDuty,
                [
                    (Months.Jan, 12),
                    (Months.Feb, 13),
                    (Months.Mar, 14),
                    (Months.Apr, 15),
                    (Months.May, 16),
                    (Months.Jun, 17),
                    (Months.Jul, 18),
                    (Months.Aug, 19),
                    (Months.Sep, 20),
                    (Months.Oct, 9),
                    (Months.Nov, 8),
                    (Months.Dec, 7),
                ]
            ),
            (
                Items.holydayDuty,
                [
                    (Months.Jan, 16),
                    (Months.Feb, 24),
                    (Months.Mar, 16),
                    (Months.Apr, 16),
                    (Months.May, 16),
                    (Months.Jun, 24),
                    (Months.Jul, 24),
                    (Months.Aug, 16),
                    (Months.Sep, 16),
                    (Months.Oct, 16),
                    (Months.Nov, 16),
                    (Months.Dec, 16),
                ]
            ),
            (
                Items.nightDuty,
                [
                    (Months.Jan, 5),
                    (Months.Feb, 5),
                    (Months.Mar, 5),
                    (Months.Apr, 5),
                    (Months.May, 5),
                    (Months.Jun, 5),
                    (Months.Jul, 3),
                    (Months.Aug, 7),
                    (Months.Sep, 2),
                    (Months.Oct, 8),
                    (Months.Nov, 5),
                    (Months.Dec, 3),
                ]
            )
        ]
    
}

func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        try data = Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
         return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
