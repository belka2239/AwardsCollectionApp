//
//  CubeView.swift
//  AwardsCollectionApp
//
//  Created by VG on 11.06.2022.
//

import SwiftUI

struct PinwheelView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let zero = size * 0
            let oneQuarter = size * 0.25
            let middle = size / 2
            let threeQuarter = size * 0.75
            
            Path { path in
                path.move(to: CGPoint(x: zero, y: zero))
                path.addLine(to: CGPoint(x: middle, y: zero))
                path.addLine(to: CGPoint(x: oneQuarter, y: oneQuarter))
                
                path.move(to: CGPoint(x: oneQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: middle, y: zero))
                path.addLine(to: CGPoint(x: middle, y: middle))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: threeQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: middle, y: zero))
                
                path.move(to: CGPoint(x: threeQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: size, y: zero))
                path.addLine(to: CGPoint(x: size, y: middle))
                
                path.move(to: CGPoint(x: size, y: middle))
                path.addLine(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: threeQuarter, y: oneQuarter))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: zero, y: middle))
                path.addLine(to: CGPoint(x: oneQuarter, y: oneQuarter))
                
                path.move(to: CGPoint(x: zero, y: middle))
                path.addLine(to: CGPoint(x: zero, y: size))
                path.addLine(to: CGPoint(x: oneQuarter, y: threeQuarter))
                
                path.move(to: CGPoint(x: zero, y: middle))
                path.addLine(to: CGPoint(x: oneQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: middle, y: middle))
                
                path.move(to: CGPoint(x: oneQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: middle, y: size))
                path.addLine(to: CGPoint(x: middle, y: middle))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: threeQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: middle, y: size))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: threeQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: size, y: middle))
                
                path.move(to: CGPoint(x: threeQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: size, y: size))
                path.addLine(to: CGPoint(x: middle, y: size))
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.orange, .purple]),
                    startPoint: UnitPoint(x: 0, y: 1),
                    endPoint: UnitPoint(x: 1, y: 0)
                )
            )
            
            Path { path in
                path.move(to: CGPoint(x: zero, y: zero))
                path.addLine(to: CGPoint(x: middle, y: zero))
                path.addLine(to: CGPoint(x: oneQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: zero, y: zero))
                
                path.move(to: CGPoint(x: oneQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: middle, y: zero))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: threeQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: middle, y: zero))
                
                path.move(to: CGPoint(x: threeQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: size, y: zero))
                path.addLine(to: CGPoint(x: size, y: middle))
                
                path.move(to: CGPoint(x: threeQuarter, y: oneQuarter))
                path.addLine(to: CGPoint(x: size, y: middle))
                path.addLine(to: CGPoint(x: middle, y: middle))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: zero, y: middle))
                path.addLine(to: CGPoint(x: oneQuarter, y: oneQuarter))
                
                path.move(to: CGPoint(x: zero, y: middle))
                path.addLine(to: CGPoint(x: zero, y: size))
                path.addLine(to: CGPoint(x: oneQuarter, y: threeQuarter))
                
                path.move(to: CGPoint(x: zero, y: middle))
                path.addLine(to: CGPoint(x: oneQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: middle, y: middle))
                
                path.move(to: CGPoint(x: oneQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: middle, y: size))
                path.addLine(to: CGPoint(x: middle, y: middle))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: threeQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: middle, y: size))
                
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: threeQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: size, y: middle))
                
                path.move(to: CGPoint(x: threeQuarter, y: threeQuarter))
                path.addLine(to: CGPoint(x: size, y: size))
                path.addLine(to: CGPoint(x: middle, y: size))
            }
            .stroke(Color.black, lineWidth: 2)
            
        }
        .frame(width: width, height: height)
    }
    
}


struct CubeView_Previews: PreviewProvider {
    static var previews: some View {
        PinwheelView(width: 200, height: 200)
    }
}
