//
//  MagicianFace.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct MagicianFace: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            // Outline
            Image(symbol: .dropFill)
                .arrangeShape(color: .paleOrange,
                              fontSize: baseLength * 0.75,
                              flipType: .vertical)
            
            VStack {
                // Eyebrows
                HStack(spacing: 0) {
                    ForEach(0..<2) { _ in
                        Image(symbol: .chevronCompactUp)
                            .arrangeShape(fontSize: baseLength * 0.225,
                                          fontWeight: .thin)
                    }
                }
                
                Spacer()
                    .frame(height: 0)
                
                MagicianSunGlasses(baseLength: baseLength)
                
                // Nose
                Image(symbol: .cloudHeavyrain)
                    .arrangeShape(fontSize: baseLength * 0.1625,
                                  fontWeight: .light)
                
                // Mouse
                ZStack {
                    
                    Image(symbol: .rectangleRoundedbottomFill)
                        .arrangeShape(color: .red,
                                      width: baseLength * 0.15,
                                      height: baseLength * 0.075)
                    
                    Image(symbol: .capsuleFill)
                        .arrangeShape(color: .orange,
                                      width: baseLength * 0.145,
                                      height: baseLength * 0.025,
                                      offsetY: baseLength * 0.025)
                }
            }
        }
    }
}

struct MagicianFace_Previews: PreviewProvider {
    static var previews: some View {
        MagicianFace(baseLength: 400)
    }
}
