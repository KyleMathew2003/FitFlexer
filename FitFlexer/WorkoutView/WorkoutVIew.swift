//
//  WorkoutVIew.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/15/24.
//

import SwiftUI

struct WorkoutVIew: View {
    var body: some View {
        VStack(spacing:0){
            ScrollView{
                WorkoutViewHeader()
                HStack{
                    Text("\(DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none))")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                MyDivider(input: .white)
                OverViewComponent()
            }
            .padding(Constants.BubblePadding)

            Spacer()
        }
        .frame(width:UIScreen.main.bounds.width)
        .foregroundColor(.white)
        .background(Color.colorBackgroundMain)
    }
}

#Preview {
    WorkoutVIew()
}
