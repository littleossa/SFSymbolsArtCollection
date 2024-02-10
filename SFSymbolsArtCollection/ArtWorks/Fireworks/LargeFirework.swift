//
//  LargeFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/06.
//

import SwiftUI

struct LargeFirework: View {
    
    let baseLength: CGFloat
    let color: Color
    let dotColor: Color
    
    var body: some View {
        
        ZStack {
            
            // DotRadiowaves
            Group {
                
//                Image(symbol: .dotRadiowavesRight)
//                    .arrangeShape(color: color,
//                                  fontSize: baseLength * 0.25,
//                                  fontWeight: .bold,
//                                  offsetX: baseLength * 0.095)
                
//                Image(symbol: .dotRadiowavesRight)
//                    .arrangeShape(color: color,
//                                  fontSize: baseLength * 0.25,
//                                  fontWeight: .bold,
//                                  flipType: .horizontal,
//                                  offsetX: baseLength * -0.095)
//                
//                Image(symbol: .dotRadiowavesRight)
//                    .arrangeShape(color: color,
//                                  fontSize: baseLength * 0.25,
//                                  fontWeight: .bold,
//                                  rotationDegrees: 90,
//                                  offsetY: baseLength * -0.095)
                
//                Image(symbol: .dotRadiowavesRight)
//                    .arrangeShape(color: color,
//                                  fontSize: baseLength * 0.25,
//                                  fontWeight: .bold,
//                                  rotationDegrees: -90,
//                                  offsetY: baseLength * 0.095)
            }
            
//            Image(symbol: .circleDotted)
//                .arrangeShape(color: dotColor,
//                              fontSize: baseLength * 0.55,
//                              fontWeight: .ultraLight,
//                              rotationDegrees: baseLength * 0.225)
//            
//            Image(symbol: .circleFill)
//                .arrangeShape(color: dotColor,
//                              fontSize: baseLength * 0.085)
        }
    }
}

struct Firework_Previews: PreviewProvider {
    static var previews: some View {
        
        LargeFirework(baseLength: 400,
                      color: .red,
                      dotColor: .yellow)
    }
}
