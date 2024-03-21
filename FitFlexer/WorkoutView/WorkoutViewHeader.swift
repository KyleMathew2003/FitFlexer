//
//  WorkoutViewHeader.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/15/24.
//

import SwiftUI

struct WorkoutViewHeader: View {
    var body: some View {
        VStack(spacing:0){
            HStack{
                Spacer()
                Text("Start Your Workout")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            HStack{
                Text("\(DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none))")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
        }
        .padding(5)
        .foregroundColor(.white)
    }
}

#Preview {
    WorkoutViewHeader()
        .background(.black)

}
