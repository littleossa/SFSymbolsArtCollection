//
//  MediumFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/03.
//

import SwiftUI

struct MediumFirework: View {
    
    let baseLength: CGFloat
    let color: Color
    let dotColor: Color
    
    var body: some View {
        
        ZStack {
            Image(symbol: .helm)
                .arrangeShape(color: color,
                              fontSize: baseLength * 0.25)
            
            Image(symbol: .circleDotted)
                .arrangeShape(color: dotColor,
                              fontSize: baseLength * 0.30)
            
            Image(symbol: .circleFill)
                .arrangeShape(color: dotColor,
                              fontSize: baseLength * 0.037)
        }
    }
}

struct FMediumFirework_Previews: PreviewProvider {
    static var previews: some View {
        MediumFirework(baseLength: 400,
                       color: .red,
                       dotColor: .init(uiColor: .yellow))
    }
}
