//
//  ChartDataView.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/11/24.
//

import SwiftUI
import Charts

let Data = DataModel.example


struct ChartModule: View {
    @Binding var PoundsTrackingTimeInterval: PoundsTimeIntervalModel
    @Binding var ShowPoundsTimeIntervalSelection: Bool
    
    @State var selectedIndex: Int = 0
    var body: some View {
        VStack{
            Chart{
                ForEach(Data) { myData in
                    LineMark(x: .value("Date",myData.date), y: .value("Pounds",myData.dataVals))
                        .foregroundStyle(.colorAccent1)
                        .zIndex(0)
                    if (Data.count < 10){
                    PointMark(
                        x: .value("Date",myData.date),
                        y: .value("Pounds", myData.dataVals)
                    )
                    .symbolSize(150)
                    .foregroundStyle(.colorTextHolding)
                    .zIndex(2)
                    PointMark(
                        x: .value("Date",myData.date),
                        y: .value("Pounds", myData.dataVals)
                    )
                    .symbolSize(50)
                    .foregroundStyle(.colorAccent1Light)
                    .zIndex(3)
                }
                }
                
                Plot{
                    PointMark(
                        x: .value("Date",Data[selectedIndex].date),
                        y: .value("Pounds", Data[selectedIndex].dataVals)
                    )
                    .symbolSize(200)
                    .foregroundStyle(.colorAccentSecondary)
                    .zIndex(1)
                    PointMark(
                        x: .value("Date",Data[selectedIndex].date),
                        y: .value("Pounds", Data[selectedIndex].dataVals)
                    )
                    .symbolSize(150)
                    .foregroundStyle(.colorTextHolding)
                    .zIndex(2)
                    PointMark(
                        x: .value("Date",Data[selectedIndex].date),
                        y: .value("Pounds", Data[selectedIndex].dataVals)
                    )
                    
                    .symbolSize(50)
                    .foregroundStyle(.colorAccentSecondary)
                    .zIndex(3)
                }
                .annotation(
                    
                    position: DataModel.shouldAlignUpper(input: Data[selectedIndex].dataVals) ? .bottom : .top
                    
                    
                    ,
                    overflowResolution: .init(
                        x:.fit,
                        y:.fit
                    )
                ){
                    VStack{
                        Text("\(Int(Data[selectedIndex].dataVals)) Lbs")
                            .lineLimit(nil) // Set line limit to nil to prevent truncation
                        Text("\(DateFormatter.localizedString(from: Data[selectedIndex].date, dateStyle: .short, timeStyle: .none))")
                            .foregroundColor(.white)
                    }
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .lineLimit(nil) // Set line limit to nil to prevent truncation
                    .padding(.horizontal,10)
                    .padding(.vertical,5)
                    .background(.colorBackgroundMain.opacity(0.5))
                    .cornerRadius(Constants.bubbleCornerRadius, corners: .allCorners)


                }
            }
            .chartXAxis {
                
                AxisMarks(values: .automatic(desiredCount: 3)) { val in
                    AxisValueLabel()
                        .foregroundStyle(.colorAccentSecondary)
                }
                }
            .chartYScale(domain: [DataModel.getMinDataVal(), DataModel.getMaxDataVal()])
            .chartYAxis {
                AxisMarks(values: .automatic(desiredCount: 4)) { _ in
                    AxisValueLabel()
                        .foregroundStyle(.colorAccentSecondary)
                }
                }
            .chartOverlay { chart in
                        GeometryReader { geometry in
                            Rectangle().fill(.red.opacity(0.001))
                                .containerShape(.rect)
                                .onTapGesture { location in
                                    guard let plotFrame = chart.plotFrame else {
                                        return
                                    }
                                    
                                    let startX = geometry[plotFrame].origin.x
                                    let currentX = location.x - startX
                                    
                                    if let index: Int = chart.value(atX: currentX) {
                                        withAnimation(.interpolatingSpring){
                                            selectedIndex = DataModel.closestArrayIndexToXInput(input: index)
                                        }
                                    }
                                    
                                }
                                .gesture(
                                    DragGesture()
                                        .onEnded { _ in
                                        }
                                        .onChanged { value in
                                            guard let plotFrame = chart.plotFrame else {
                                                return
                                            }
                                            
                                            let startX = geometry[plotFrame].origin.x
                                            let currentX = value.location.x - startX
                                            
                                            if let index: Int = chart.value(atX: currentX) {
                                                
                                                withAnimation(.easeIn){
                                                    selectedIndex = DataModel.closestArrayIndexToXInput(input: index)
                                                }
                                                
                                            }
                                        }
                                )
                        }
                    }
        }
        .padding(20)
        .frame(height: UIScreen.main.bounds.width/2.2)
        .background(.colorTextHolding)
    }
}




#Preview {
    ChartModule(PoundsTrackingTimeInterval: .constant(.allTime), ShowPoundsTimeIntervalSelection: .constant(true))
}
