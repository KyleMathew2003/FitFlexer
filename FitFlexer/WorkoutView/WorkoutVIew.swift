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
            
            HStack{
                Button{
                } label:{
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 30,height: 30)
                }
                Spacer()
//TODO mid View here
                Spacer()
                Spacer()
                    .frame(width: 30,height: 30)
            }
            .padding(.horizontal,30)
            
            ScrollView(){
                WorkoutViewHeader()
                
                MyDivider(input: .white)
                
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
