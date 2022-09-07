//
//  AnimalEye.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AnimalEye: View {
    
    let baseLength: CGFloat
    let eyeColor: Color
    
    var body: some View {
        ZStack {
            Image(symbol: .circleFill)
                .arrangeShape(color: eyeColor,
                              fontSize: baseLength * 0.05)
            
            Image(symbol: .circleFill)
                .arrangeShape(color: .white,
                              fontSize: baseLength * 0.02)
        }
    }
}

struct AnimalEye_Previews: PreviewProvider {
    static var previews: some View {
        AnimalEye(baseLength: 400,
                  eyeColor: Color(uiColor: .brown))
    }
}
