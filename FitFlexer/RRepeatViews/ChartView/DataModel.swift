//
//  DataModel.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/11/24.
//

import Foundation

struct DataModel: Equatable, Identifiable{
    let date: Date
    let dataVals: Float
    
    var id: Date {date}
    
    static var example: [DataModel]{
        [DataModel(date: Date(timeIntervalSinceReferenceDate: 100000000), dataVals: 142),
         DataModel(date: Date(timeIntervalSinceReferenceDate: 350000000), dataVals: 154),
         DataModel(date: Date(timeIntervalSinceReferenceDate: 450000000), dataVals: 185),
         DataModel(date: Date(timeIntervalSinceReferenceDate: 550000000), dataVals: 204),
         DataModel(date: Date(timeIntervalSinceReferenceDate: 600000000), dataVals: 215),
         DataModel(date: Date(timeIntervalSinceReferenceDate: 650000000), dataVals: 206),
         DataModel(date: Date(timeIntervalSinceReferenceDate: 700000000), dataVals: 192),
         DataModel(date: Date(timeIntervalSinceReferenceDate: 950000000), dataVals: 155)]
    }
    
    static let datesArray = example.map { $0.date }

    // Extracting just the dataVals
    static let dataValsArray = example.map { $0.dataVals }
    
    static func getMaxDataVal() -> Float{
        var Max = Float(0)
        for i in example.indices{
            Max = max(Max,example[i].dataVals)
        }
        return Max
    }
    
    static func getMinDataVal() -> Float{
        var Min: Float = .greatestFiniteMagnitude
        for i in example.indices{
            Min = min(Min,example[i].dataVals)
        }
        return Min
    }
    
    static func getChangeDataVal() -> Float{
        return getMaxDataVal() - getMinDataVal()
    }
    
    static func closestArrayIndexToXInput(input: Int) -> Int{
        var output = 0
        var difference: Int = .max
        for i in datesArray.indices{
            if abs(Int(datesArray[i].timeIntervalSinceReferenceDate) - input) < difference{
                output = i
                difference = abs(Int(datesArray[i].timeIntervalSinceReferenceDate) - input)
            }
        }
        return output
    }
    
    static func shouldAlignUpper(input: Float) -> Bool{
        let mid = (self.getMaxDataVal() - self.getMinDataVal())/2 + self.getMinDataVal()
        if input > mid{
            return true
        }
        return false
    }
    
}
