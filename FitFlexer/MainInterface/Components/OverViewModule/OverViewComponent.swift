//
//  OverViewComponent.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/3/24.
//

import SwiftUI

struct OverViewComponent: View {
    
    var body: some View {
        
        ZStack {
            HStack(){
                VStack(alignment:.leading,spacing: Constants.VstackSpacing){
                    HStack{
                        Text("Overview")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                    }
                    Divider()
                        .padding(0.05)
                        .overlay(Color.white)
                    VStack(alignment:.leading,spacing:0){
                        HStack(spacing:0){
                            Text("Goal: ")
                            Text("Cut")
                                .fontWeight(.semibold)
                        }
                    }


                }
                .padding(Constants.BubblePadding)
                Spacer()
                
            }
            .foregroundColor(Color.white)
            .frame(maxWidth:.infinity)
            .background(
                    Color.colorTextHolding
            )
        .cornerRadius(25, corners: [.allCorners])
        }
    }
}

#Preview {
    OverViewComponent()
}
