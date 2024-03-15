//
//  PoundsTimeInterval.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/5/24.
//

import Foundation

enum PoundsTimeIntervalModel: Int, CaseIterable{
    case today
    case thisWeek
    case thisMonth
    case thisYear
    case allTime
    
    var text:String{
        switch self{
        case .today: return "Today"
        case .thisWeek: return "This Week"
        case .thisMonth: return "This Month"
        case .thisYear: return "This Year"
        case .allTime: return "All Time"
        }
    }
}
