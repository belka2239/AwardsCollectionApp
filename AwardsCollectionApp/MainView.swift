//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by VG on 08.06.2022.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                }
            }
            Spacer()
                PinwheelView(width: 200, height: 200)
                    .rotationEffect(.degrees(showAward ? 0 : 360))
                    .animation(.easeInOut(duration: 0.8))
            
            Spacer()
        }
        .font(.headline)
        .padding() 
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
