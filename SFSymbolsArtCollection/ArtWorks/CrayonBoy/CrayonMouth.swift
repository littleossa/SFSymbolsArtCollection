//
//  CrayonMouse.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonMouth: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        
        ZStack {
            Image(symbol: .capsulePortraitFill)
                .arrangeShape(color: .red,
                              width: baseLength * 0.105,
                              height: baseLength * 0.15, fontWeight: .ultraLight)
            
            Image(symbol: .capsulePortrait)
                .arrangeShape(width: baseLength * 0.105,
                              height: baseLength * 0.15, fontWeight: .ultraLight)
        }
        .rotationEffect(.degrees(10))
    }
}

struct CrayonMouth_Previews: PreviewProvider {
    static var previews: some View {
        CrayonMouth(baseLength: 400)
    }
}
