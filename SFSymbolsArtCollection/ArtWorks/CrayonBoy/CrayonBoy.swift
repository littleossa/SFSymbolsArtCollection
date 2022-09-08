//
//  CrayonBoy.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/04/27.
//

import SwiftUI

struct CrayonBoy: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseLength = proxy.baseLength
            
            ZStack {
                CrayonFace(faceType: .fill,
                           baseLength: baseLength)
                
                CrayonHair(baseLength: baseLength)
                    .offset(x: baseLength * 0.025,
                            y: baseLength * -0.125)
                
                Group {
                    CrayonEye(baseLength: baseLength)
                        .offset(x: baseLength * -0.0625,
                                y: 0)
                    
                    CrayonEye(baseLength: baseLength)
                        .offset(x: baseLength * 0.125,
                                y: 0)
                    
                }
                .rotationEffect(.radians(0.1))
                
                CrayonFace(faceType: .line,
                           baseLength: baseLength)
                
                
                CrayonMouth(baseLength: baseLength)
                    .offset(x: baseLength * -0.075,
                            y: baseLength * 0.225)
                
            }
            .position(x: proxy.frame(in: .local).midX,
                      y: proxy.frame(in: .local).midY)
        }
    }
}

struct CrayonBoy_Previews: PreviewProvider {
    static var previews: some View {
        CrayonBoy()
    }
}
