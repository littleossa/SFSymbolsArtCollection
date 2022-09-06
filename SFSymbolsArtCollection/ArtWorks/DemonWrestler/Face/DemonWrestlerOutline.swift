//
//  ElectroMagneticWaveOutline.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/02.
//

import SwiftUI

struct DemonWrestlerOutline: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            
            // Hat
            Group {
                
                // horns
                Group {
                    Image(symbol: .boltHorizontalFill)
                        .arrangeShape(color: .red,
                                      fontSize: baseLength * 0.2,
                                      rotationDegrees: 55,
                                      offsetX: baseLength * 0.15,
                                      offsetY: baseLength * -0.2)
                    
                    Image(symbol: .boltHorizontal)
                        .arrangeShape(fontSize: baseLength * 0.25,
                                      fontWeight: .light,
                                      rotationDegrees: 55,
                                      offsetX: baseLength * 0.14,
                                      offsetY: baseLength * -0.19)
                    
                    Image(symbol: .boltHorizontalFill)
                        .arrangeShape(color: .red,
                                      fontSize: baseLength * 0.2,
                                      flipType: .vertical,
                                      rotationDegrees: -55,
                                      offsetX: baseLength * -0.15,
                                      offsetY: baseLength * -0.2)
                    
                    Image(symbol: .boltHorizontal)
                        .arrangeShape(fontSize: baseLength * 0.25,
                                      fontWeight: .light,
                                      flipType: .vertical,
                                      rotationDegrees: -55,
                                      offsetX: baseLength * -0.14,
                                      offsetY: baseLength * -0.19)
                }
                
                Image(symbol: .shieldFill)
                    .arrangeShape(fontSize: baseLength * 0.375,
                                  flipType: .vertical,
                                  offsetY: baseLength * -0.1)
                
                ZStack {
                    Image(symbol: .circleFill)
                        .arrangeShape(color: .red,
                                      fontSize: baseLength * 0.1,
                                      fontWeight: .bold)
                    
                    Image(symbol: ._4AltCircleFill)
                        .arrangeShape(fontSize: baseLength * 0.15,
                                      fontWeight: .bold)
                }
                .offset(x: 0, y: baseLength * -0.175)
            }
            
            ZStack {
                Image(symbol: .capsulePortrait)
                    .arrangeShape(fontSize: baseLength * 0.2025,
                                  fontWeight: .light)
                
                Image(symbol: .capsulePortraitFill)
                    .arrangeShape(color: .paleOrange,
                                  fontSize: baseLength * 0.2)
            }
            
            Image(symbol: .chevronCompactDown)
                .arrangeShape(fontSize: baseLength * 0.2,
                              fontWeight: .bold,
                              offsetY: baseLength * -0.1175)
        }
    }
}

struct DemonWrestlerOutline_Previews: PreviewProvider {
    static var previews: some View {
        DemonWrestlerOutline(baseLength: 400)
    }
}
