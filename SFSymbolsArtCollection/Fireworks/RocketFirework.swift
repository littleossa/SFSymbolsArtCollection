//
//  RocketFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/07.
//

import SwiftUI

extension RocketFirework {
    
    init(baseLength: CGFloat, color: Color) {
        self.baseLength = baseLength
        self.color = color
        self.alternatingCurrentOffsetYs = [
            CGFloat(baseLength * -0.22),
            CGFloat(0),
            CGFloat(baseLength * 0.22),
        ]
    }
}

struct RocketFirework: View {
    
    let baseLength: CGFloat
    let color: Color
    let alternatingCurrentOffsetYs: [CGFloat]
    
    var body: some View {
        
        ZStack {
            Image(symbol: .circleFill)
                .arrangeShape(color: color,
                              fontSize: baseLength * 0.05,
                              offsetY: baseLength * -0.35)
            
            ForEach(alternatingCurrentOffsetYs, id: \.self) { offsetY in
                Image(symbol: .alternatingcurrent)
                    .arrangeShape(color: color,
                                  width: baseLength * 0.25,
                                  height: baseLength * 0.025,
                                  rotationDegrees: baseLength * 0.225,
                                  offsetY: offsetY)
            }
        }
    }
}

struct RocketFirework_Previews: PreviewProvider {
    static var previews: some View {
        RocketFirework(baseLength: 400,
                       color: .red)
    }
}
