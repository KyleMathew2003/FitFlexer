//
//  ExerciseModel.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/20/24.
//

import Foundation

struct ExerciseModel{
    var name: String = ""
    var exerciseType: ExerciseType = .misc
    var rating: Int8 = -1
    
    
    
    
    
}

enum ExerciseType: Int, CaseIterable{
    case cardio
    case strength
    case stretches
    case misc
    
    var name: String{
        switch self{
        case .cardio: return "Cardio"
        case .strength: return "Strength"
        case .stretches: return "Stretches"
        case .misc: return "Misc."
            
        }
    }
    
    var timerDefaults: Bool{
        switch self{
        case .cardio: return true
        case .strength: return false
        case .stretches: return false
        case .misc: return true
        }
    }
    
    var repsDefaults: Bool{
        switch self{
        case .cardio: return false
        case .strength: return true
        case .stretches: return false
        case .misc: return false
        }
    }
}
