//
//  Header.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/14/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Spacer()
            Text("Hello Kyle!")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(5)
                .padding(.bottom,5)
            Spacer()
        }
    }
}

#Preview {
    Header()
        .background(Color.black)
}
