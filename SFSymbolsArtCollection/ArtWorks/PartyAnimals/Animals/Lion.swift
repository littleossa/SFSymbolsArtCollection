//
//  Lion.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Lion: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            
            // Lion's mane
            Group {
                Image(symbol: .sealFill)
                    .arrangeShape(color: .orange,
                                  fontSize: baseLength * 0.575,
                                  fontWeight: .ultraLight)
                
                Image(symbol: .sealFill)
                    .arrangeShape(color: .orange,
                                  fontSize: baseLength * 0.575,
                                  fontWeight: .ultraLight,
                                  rotationDegrees: 20)
            }
            
            AnimalOutline(baseLength: baseLength,
                          faceColor: .yellow,
                          earColor: .yellow)
            .offset(x: 0,
                    y: baseLength * 0.0375)
            
            // Whiskers
            Group {
                AnimalWhiskers(baseLength: baseLength,
                               color: .darkBrown,
                               skinColor: .yellow)
                .offset(x: baseLength * -0.08,
                        y: baseLength * 0.075)
                
                AnimalWhiskers(baseLength: baseLength,
                               color: .darkBrown,
                               skinColor: .yellow)
                .offset(x: baseLength * -0.08,
                        y: baseLength * 0.075)
                .rotation3DEffect(.degrees(180),
                                  axis: FlipType.horizontal.axis,
                                  anchorZ: 1)
            }
            
            Group {
                AnimalEye(baseLength: baseLength,
                          eyeColor: .darkBrown)
                .offset(x: baseLength * -0.075,
                        y: baseLength * -0.0025)
                
                AnimalEye(baseLength: baseLength,
                          eyeColor: .darkBrown)
                .offset(x: baseLength * 0.075,
                        y: baseLength * -0.0025)
            }
            
            AnimalNose(baseLength: baseLength,
                       noseTipColor: .darkBrown,
                       mouthColor: .darkBrown)
            .offset(x: 0,
                    y: baseLength * 0.075)
        }
    }
}

struct Lion_Previews: PreviewProvider {
    static var previews: some View {
        Lion(baseLength: 400)
    }
}
