//
//  WorkoutViewHeader.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/15/24.
//

import SwiftUI

struct WorkoutViewHeader: View {
    var body: some View {
        HStack{
            Spacer()
            Text("Start Your Workout")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(5)
                .padding(.bottom,5)
            Spacer()
        }
    }
}

#Preview {
    WorkoutViewHeader()
}
