//
//  myDivider.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/7/24.
//

import SwiftUI

struct MyDivider: View {
    
    init(input:Color){
        color = input
    }
    var color: Color = .gray
    let width: CGFloat = 1
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
#Preview {
    MyDivider(input: .blue)
}
