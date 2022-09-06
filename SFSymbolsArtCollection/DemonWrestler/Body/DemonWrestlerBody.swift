//
//  ElectricMagneticWaveManBody.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/02.
//

import SwiftUI

struct DemonWrestlerBody: View {
    
    let baseLength: CGFloat
    let skinColor: Color = .paleOrange
    
    var body: some View {
        ZStack {
            
            Image(symbol: .figureWave)
                .arrangeShape(color: skinColor,
                              fontSize: baseLength * 0.825)
            
            Image(symbol: .powerplugFill)
                .arrangeShape(color: skinColor,
                              fontSize: baseLength * 0.1875,
                              fontWeight: .bold,
                              rotationDegrees: -90,
                              offsetX: baseLength * 0.0275,
                              offsetY: baseLength * -0.19)
            
            Image(symbol: .locationFill)
                .arrangeShape(fontSize: baseLength * 0.125,
                              rotationDegrees: -132,
                              offsetX: baseLength * 0.02,
                              offsetY: baseLength * 0.04)
            
            Group {
                Image(symbol: .minus)
                    .arrangeShape(fontSize: baseLength * 0.15,
                                  fontWeight: .bold,
                                  rotationDegrees: 70,
                                  offsetX: baseLength * 0.065,
                                  offsetY: baseLength * -0.025)
                
                Image(symbol: .minus)
                    .arrangeShape(fontSize: baseLength * 0.15,
                                  fontWeight: .bold,
                                  rotationDegrees: 75,
                                  offsetX: baseLength * 0.096,
                                  offsetY: baseLength * -0.125)
                
                Image(symbol: .minus)
                    .arrangeShape(fontSize: baseLength * 0.1025,
                                  fontWeight: .black,
                                  rotationDegrees: 80,
                                  offsetX: baseLength * 0.1143,
                                  offsetY: baseLength * -0.2)
                
                Image(symbol: .minus)
                    .arrangeShape(fontSize: baseLength * 0.15,
                                  fontWeight: .bold,
                                  rotationDegrees: -70,
                                  offsetX: baseLength * -0.0225,
                                  offsetY: baseLength * -0.025)
                
                Image(symbol: .minus)
                    .arrangeShape(fontSize: baseLength * 0.15,
                                  fontWeight: .bold,
                                  rotationDegrees: -75,
                                  offsetX: baseLength * -0.0525,
                                  offsetY: baseLength * -0.125)
                
                Image(symbol: .minus)
                    .arrangeShape(fontSize: baseLength * 0.1025,
                                  fontWeight: .black,
                                  rotationDegrees: -80,
                                  offsetX: baseLength * -0.07,
                                  offsetY: baseLength * -0.2)
            }
        }
    }
}

struct DemonWrestlerBody_Previews: PreviewProvider {
    static var previews: some View {
        DemonWrestlerBody(baseLength: 400)
    }
}
