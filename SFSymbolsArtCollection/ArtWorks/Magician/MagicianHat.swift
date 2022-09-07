//
//  MagicianHat.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct MagicianHat: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            
            Image(symbol: .rectangleFill)
                .arrangeShape(color: .red,
                              width: baseLength * 0.435,
                              height: baseLength * 0.075,
                              flipType: .vertical,
                              offsetY: baseLength * 0.1)
            
            Image(symbol: .archiveboxFill)
                .arrangeShape(fontSize: baseLength * 0.525,
                              flipType: .vertical)
            
            Image(symbol: .rectangleFill)
                .arrangeShape(width: baseLength * 0.625,
                              height: baseLength * 0.125,
                              flipType: .vertical,
                              offsetY: baseLength * 0.1875)
        }
    }
}

struct MagicianHat_Previews: PreviewProvider {
    static var previews: some View {
        MagicianHat(baseLength: 400)
    }
}
