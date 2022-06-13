//
//  Award.swift
//  AwardsCollectionApp
//
//  Created by VG on 13.06.2022.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles(width: 160, height: 160)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView(width: 160, height: 160)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView(width: 160, height: 160)),
                title: "Curves View",
                awarded: true
            ),
            Award(
                awardView: AnyView(PinwheelView(width: 160, height: 160)),
                title: "Pinwheel View",
                awarded: false
            ),
        ]
    }
}


