//
//  Earth.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Earth: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            Image(symbol: .circleFill)
                .arrangeShape(color: .cyan,
                              fontSize: baseLength * 0.5)
            
            Image(symbol: .globeAsiaAustraliaFill)
                .arrangeShape(color: .green,
                              fontSize: baseLength * 0.55,
                              fontWeight: .ultraLight)
            
            Image(symbol: .globeAsiaAustralia)
                .arrangeShape(fontSize: baseLength * 0.55,
                              fontWeight: .ultraLight)
        }
    }
}

struct Earth_Previews: PreviewProvider {
    static var previews: some View {
        Earth(baseLength: 400)
    }
}
