//
//  RocketFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/07.
//

import SwiftUI

struct RocketFirework: View {
    
    let baseLength: CGFloat
    let color: Color
    
    var body: some View {
        
        ZStack {
//            Image(symbol: .circleFill)
//                .arrangeShape(color: color,
//                              fontSize: baseLength * 0.05,
//                              offsetY: baseLength * -0.35)
            
            // AlternatingCurrents
            Group {
//                Image(symbol: .alternatingcurrent)
//                    .arrangeShape(color: color,
//                                  width: baseLength * 0.25,
//                                  height: baseLength * 0.025,
//                                  rotationDegrees: 90,
//                                  offsetY: baseLength * -0.22)
//                
//                Image(symbol: .alternatingcurrent)
//                    .arrangeShape(color: color,
//                                  width: baseLength * 0.25,
//                                  height: baseLength * 0.025,
//                                  rotationDegrees: 90)
//                
//                Image(symbol: .alternatingcurrent)
//                    .arrangeShape(color: color,
//                                  width: baseLength * 0.25,
//                                  height: baseLength * 0.025,
//                                  rotationDegrees: 90,
//                                  offsetY: baseLength * 0.22)
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
