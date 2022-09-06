//
//  Hair.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct Hair: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        
        Image(symbol: .alternatingcurrent)
            .arrangeShape(fontSize: baseLength * 0.0825,
                          fontWeight: .thin,
                          rotationDegrees: 100)
    }
}

struct Hair_Previews: PreviewProvider {
    static var previews: some View {
        Hair(baseLength: 400)
    }
}
