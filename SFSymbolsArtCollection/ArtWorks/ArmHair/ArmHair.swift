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
            
            ZStack {
                Arm(baseLength: 400)
                
                ForEach(0..<250) { _ in
                    Hair(baseLength: 400)
                        .offset(x: CGFloat(Int.random(in: -140...40)),
                                y: CGFloat(Int.random(in: -30...8)))
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
