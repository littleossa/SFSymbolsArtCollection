//
//  ElectroMagneticWaveMan.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI
import SFUserFriendlySymbols

struct DemonWrestler: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            let baseLength = proxy.baseLength * 1.2
            
            ZStack {
                DemonWrestlerBody(baseLength: baseLength)
                
                DemonWrestlerHand(type: .left,
                                  baseLength: baseLength)
                .offset(x: baseLength * 0.19,
                        y: baseLength * 0.14)
                
                DemonWrestlerFace(baseLength: baseLength)
                    .offset(x: baseLength * 0.025,
                            y: baseLength * -0.325)
                
                DemonWrestlerHand(type: .right,
                                  baseLength: baseLength)
                .offset(x: baseLength * -0.1875,
                        y: baseLength * -0.465)
            }
            .position(x: proxy.frame(in: .local).midX,
                      y: proxy.frame(in: .local).midY)
        }
    }
}

struct DemonWrestler_Previews: PreviewProvider {
    static var previews: some View {
        DemonWrestler()
    }
}
