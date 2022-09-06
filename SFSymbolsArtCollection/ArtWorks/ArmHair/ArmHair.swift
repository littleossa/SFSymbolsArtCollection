//
//  ArmHair.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct ArmHair: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseLength = proxy.baseLength
            
            let lowestX = Int(baseLength * -0.35)
            let highestX = Int(baseLength * 0.1)
            let lowestY = Int(baseLength * -0.075)
            let highestY = Int(baseLength * 0.02)
            
            ZStack {
                Arm(baseLength: baseLength)
                
                ForEach(0..<250) { _ in
                    Hair(baseLength: baseLength)
                        .offset(x: CGFloat(Int.random(in: lowestX...highestX)),
                                y: CGFloat(Int.random(in: lowestY...highestY)))
                }
            }
            .position(x: proxy.frame(in: .local).midX,
                      y: proxy.frame(in: .local).midY)
        }
    }
}

struct ArmHair_Previews: PreviewProvider {
    static var previews: some View {
        ArmHair()
    }
}
