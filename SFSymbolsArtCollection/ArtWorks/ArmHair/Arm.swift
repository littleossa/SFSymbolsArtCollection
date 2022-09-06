//
//  Arm.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct Arm: View {
    
    let baseLength: CGFloat
    let skinColor: Color = .paleOrange
    
    var body: some View {
        HStack(spacing: 0) {
            
            // Arm
            ZStack {
                Image(symbol: .rectangleFill)
                    .arrangeShape(color: skinColor,
                                  width: baseLength * 0.5,
                                  height: baseLength * 0.125,
                                  fontWeight: .light)
                
                Image(symbol: .rectangle)
                    .arrangeShape(width: baseLength * 0.5,
                                  height: baseLength * 0.125,
                                  fontWeight: .thin)
            }
            
            ZStack {
                
                // Hand
                ZStack {
                    Image(symbol: .handRaisedFill)
                        .arrangeShape(color: skinColor,
                                      fontSize: baseLength * 0.225,
                                      rotationDegrees: -90)
                    
                    Image(symbol: .handRaised)
                        .arrangeShape(fontSize: baseLength * 0.25,
                                      fontWeight: .light,
                                      rotationDegrees: -90)
                }
                .offset(x: -20, y: 5)
                
                Image(symbol: .rectangleFill)
                    .arrangeShape(color: skinColor,
                                  fontSize: baseLength * 0.1,
                                  offsetX: baseLength * -0.125)
            }
        }
    }
}

struct Arm_Previews: PreviewProvider {
    static var previews: some View {
        Arm(baseLength: 400)
    }
}
