//
//  MediumFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/03.
//

import SwiftUI

struct MediumFirework: View {
    
    let size: CGFloat
    let color: Color
    let dotColor: Color
    
    var body: some View {
        
        ZStack {
            Image(symbol: .helm)
                .arrangeShape(color: color,
                              fontSize: size * 0.25)
            
            Image(symbol: .circleDotted)
                .arrangeShape(color: dotColor,
                              fontSize: size * 0.30)
            
            Image(symbol: .circleFill)
                .arrangeShape(color: dotColor,
                              fontSize: size * 0.037)
        }
    }
}

struct FMediumFirework_Previews: PreviewProvider {
    static var previews: some View {
        MediumFirework(size: 400,
                      color: .red,
                      dotColor: .lemonYellow)
    }
}
