//
//  ElectroMagneticWaveManFace.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI
import SFUserFriendlySymbols

struct DemonWrestlerFace: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            DemonWrestlerOutline(baseLength: baseLength)
            
            VStack(spacing: 1) {
                HStack(spacing: 5) {
                    
                    ForEach(0..<2) { _ in
                        ZStack {
                            Image(symbol: .capsuleFill)
                                .arrangeShape(color: .indigo,
                                              fontSize: baseLength * 0.033,
                                              offsetY: baseLength * 0.005)
                            
                            Image(symbol: .eye)
                                .arrangeShape(fontSize: baseLength * 0.035)
                            
                            Image(symbol: .eyeFill)
                                .arrangeShape(color: .white,
                                              fontSize: baseLength * 0.031)
                        }
                    }
                }
                
                Image(symbol: .nose)
                    .arrangeShape(fontSize: baseLength * 0.05,
                                  fontWeight: .thin)
                
                Spacer()
                    .frame(height: 8)
                
                ZStack {
                    Image(symbol: .mouth)
                        .arrangeShape(fontSize: baseLength * 0.05,
                                      fontWeight: .bold)
                    
                    Image(symbol: .mouthFill)
                        .arrangeShape(color: .red,
                                      fontSize: baseLength * 0.05)
                }
            }
            
            Image(symbol: .waveformPath)
                .arrangeShape(color: .red,
                              fontSize: 20,
                              rotationDegrees: 45,
                              offsetX: 25)
        }
    }
}

struct DemonWrestlerFace_Previews: PreviewProvider {
    static var previews: some View {
        DemonWrestlerFace(baseLength: 400)
    }
}
