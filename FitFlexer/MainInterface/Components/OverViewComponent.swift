//
//  OverViewComponent.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/3/24.
//

import SwiftUI

struct OverViewComponent: View {
    @State var PoundsTrackingTimeInterval = 0
    
    var body: some View {
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
                    
                    HStack(alignment: .center,spacing:0){
                        Text("Pounds ")
                        Text("Gained ")
                        Button{
                            
                        } label:{
                            HStack(spacing:0){
                                Text("All Time")
                                    .padding(.trailing,3)
                                Image(systemName: "chevron.down")
                                    
                            }
                        }
                        .padding(4)
                        .padding(.horizontal,4)
                        .background(.colorBackgroundMain)

                        .cornerRadius(25, corners: .allCorners)

                        Text(" : 192")
                            .fontWeight(.semibold)
                    }
                }


            }
            .padding()
            Spacer()
            
        }
        .foregroundColor(.white)
        .frame(maxWidth:.infinity)
        .background(
                Color.colorTextHolding
        )
        .cornerRadius(25, corners: [.allCorners])
    }
}

#Preview {
    OverViewComponent()
}
