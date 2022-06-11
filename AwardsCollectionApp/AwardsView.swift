//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by VG on 08.06.2022.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangles(width: 200, height: 200)
                    PathView(width: 200, height: 200)
                    CurvesView(width: 200, height: 200)
                    PinwheelView(width: 160, height: 160)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
