//
//  MainInterface.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/3/24.
//

import SwiftUI

struct MainInterface: View {
    @State var poundsTimeInterval: PoundsTimeIntervalModel = .thisMonth
    @State var displayPoundsTimeIntervalSelection: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing:0){
                    Header()
                    ScrollView{
                        VStack(){
                            //Place Components in here
                            OverViewComponent()
                            
                            ChartDataView(PoundsTrackingTimeInterval: $poundsTimeInterval, ShowPoundsTimeIntervalSelection: $displayPoundsTimeIntervalSelection)
                        }
                        .padding(.top,5)
                        .padding(.horizontal)
                    }
                    .onTapGesture {
                        withAnimation(.spring()){
                            displayPoundsTimeIntervalSelection = false
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                
                //Menu for selecting interval to find net pounds change
                VStack{
                    Spacer()
                    Text("Hello")
                }.foregroundColor(.white)
                if (displayPoundsTimeIntervalSelection == true){
                    PoundsTimeIntervalSelectionView(cur_Interval: $poundsTimeInterval, display: $displayPoundsTimeIntervalSelection)
                        .transition(.move(edge: .bottom))
                }
            }
            .background(
                Color.colorBackgroundMain
                )
        }
    }
}

#Preview {
    MainInterface()
}
