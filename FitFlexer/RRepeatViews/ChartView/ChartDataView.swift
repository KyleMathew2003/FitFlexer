//
//  ChartDataView.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/11/24.
//

import SwiftUI
import Charts

struct ChartDataView: View {
    @Binding var PoundsTrackingTimeInterval: PoundsTimeIntervalModel
    @Binding var ShowPoundsTimeIntervalSelection: Bool
    
    @State var selectedIndex: Int = 0
    var body: some View {
        VStack(spacing:0){
            HStack(alignment: .center,spacing:0){
                Spacer()
                Button{
                    withAnimation(.spring()){
                        ShowPoundsTimeIntervalSelection = true
                    }
                } label:{
                    HStack(spacing:0){
                        Text("\(PoundsTrackingTimeInterval.text)")
                            .padding(.trailing,3)
                        Image(systemName: "chevron.down")
                            
                    }
                }
                .padding(4)
                .padding(.horizontal,4)
                .background(.colorBackgroundMain)

                .cornerRadius(Constants.bubbleCornerRadius, corners: .allCorners)

                Text(" : \(Int(DataModel.getChangeDataVal())) Lbs")
                    .fontWeight(.semibold)
                Spacer()
            }
            .foregroundColor(.white)
            
            ChartModule(PoundsTrackingTimeInterval: $PoundsTrackingTimeInterval, ShowPoundsTimeIntervalSelection: $ShowPoundsTimeIntervalSelection)
            
            
        }
        .padding(.top,Constants.BubblePadding)
        .background(.colorTextHolding)
        .cornerRadius(Constants.bubbleCornerRadius, corners: .allCorners)
    }
}




#Preview {
    ChartDataView(PoundsTrackingTimeInterval: .constant(.allTime), ShowPoundsTimeIntervalSelection: .constant(true))
}
