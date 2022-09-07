//
//  Magician.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Magician: View {
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseLength = proxy.baseLength
            
            ZStack {
                MagicianFace(baseLength: baseLength)
                    .offset(x: 0, y: baseLength * 0.125)
                MagicianHat(baseLength: baseLength)
                    .offset(x: 0, y: baseLength * -0.375)
            }
            .position(x: proxy.frame(in: .local).midX,
                      y: proxy.frame(in: .local).midY)
        }
    }
}

struct Magician_Previews: PreviewProvider {
    static var previews: some View {
        Magician()
    }
}
