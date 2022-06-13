//
//  HorizontalGridView.swift
//  AwardsCollectionApp
//
//  Created by VG on 13.06.2022.
//

import SwiftUI

struct HorizontalGridView: View {
    let data = 1...10
    let rows = [
        GridItem(.fixed(200))
    ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(data, id: \.self) { item in
                    Text("Image \(item)")
                }
            }
        }
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
