//
//  PoundsTimeIntervalSelectionMenu.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/5/24.
//

import SwiftUI

struct PoundsTimeIntervalSelectionView: View {
    @Binding var cur_Interval: PoundsTimeIntervalModel
    @Binding var display: Bool
    
    var body: some View {
        VStack{
            Spacer()
            VStack(alignment:.leading,spacing: 10){
                VStack(spacing:0){
                    ForEach(PoundsTimeIntervalModel.allCases, id: \.self){ i in
                        Button{
                            cur_Interval = i
                            withAnimation(.spring()){
                                display = false
                            }
                        }label: {
                            VStack(spacing:5){
                                MyDivider(input: (cur_Interval == i) ? .white:.clear)
                                HStack(alignment:.center){
                                    Image(systemName: "globe")
                                    Text("\(i.text)")
                                    Spacer()
                                }
                                MyDivider(input: (cur_Interval == i) ? .white:.clear)
                            }
                        }
                    }
                }
            }
            .foregroundColor(.white)
            .padding()
            
            .background(Color.colorTextHolding)
            .cornerRadius(10, corners: [.topLeft,.topRight])
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PoundsTimeIntervalSelectionView(cur_Interval: .constant(.allTime), display: .constant(true))
}
