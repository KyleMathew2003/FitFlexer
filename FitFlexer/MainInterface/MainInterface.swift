//
//  MainInterface.swift
//  FitFlexer
//
//  Created by Kyle Mathew on 3/3/24.
//

import SwiftUI

struct MainInterface: View {
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    //Place Components in here
                    OverViewComponent()
                   
                }
            }
            .padding(.top,5)
            .padding(.horizontal)
            .frame(maxWidth: .infinity)

            .background(Color.colorBackgroundMain)
        }
    }
}

#Preview {
    MainInterface()
}
