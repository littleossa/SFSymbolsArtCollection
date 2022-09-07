//
//  MagicianSunGlasses.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/08.
//

import SwiftUI

struct MagicianSunGlasses: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Image(symbol: .minus)
                .arrangeShape(width: baseLength * 0.075,
                              height: baseLength * 0.0125)
            
            ZStack {
                
                Image(symbol: .circleFill)
                    .arrangeShape(color: .white,
                                  fontSize: baseLength * 0.125)
                
                Image(symbol: .moonCircleFill)
                    .arrangeShape(fontSize: baseLength * 0.125)
                
            }
            
            Image(symbol: .minus)
                .arrangeShape(width: baseLength * 0.075,
                              height: baseLength * 0.0125)
            
            ZStack {
                
                Image(symbol: .circleFill)
                    .arrangeShape(color: .white,
                                  fontSize: baseLength * 0.125)
                
                Image(symbol: .moonCircleFill)
                    .arrangeShape(fontSize: baseLength * 0.125)
                
            }
            
            Image(symbol: .minus)
                .arrangeShape(width: baseLength * 0.075,
                              height: baseLength * 0.0125)
        }
    }
}

struct MagicianSunGlasses_Previews: PreviewProvider {
    static var previews: some View {
        MagicianSunGlasses(baseLength: 400)
    }
}
