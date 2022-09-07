//
//  AnimalWhiskers.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct AnimalWhiskers: View {
    
    let baseLength: CGFloat
    let color: Color
    let skinColor: Color
    
    var body: some View {
        ZStack {
            Image(symbol: .rays)
                .arrangeShape(color: color,
                              width: baseLength * 0.175,
                              height: baseLength * 0.1)
            
            Image(symbol: .rectangleFill)
                .arrangeShape(color: skinColor,
                              fontSize: baseLength * 0.15,
                              rotationDegrees: 90,
                              offsetX: baseLength * 0.05)
        }
    }
}

struct AnimalWhiskers_Previews: PreviewProvider {
    static var previews: some View {
        AnimalWhiskers(baseLength: 400,
                       color: .darkBrown,
                       skinColor: .red)
    }
}
