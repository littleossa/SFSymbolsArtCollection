//
//  Frog.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Frog: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            AnimalOutline(baseLength: baseLength,
                          faceColor: .green,
                          earColor: .green)
            
            // Eyes
            Group {
                AnimalEye(baseLength: baseLength,
                          eyeColor: .black)
                .offset(x: baseLength * -0.125,
                        y: baseLength * -0.15)
                
                AnimalEye(baseLength: baseLength,
                          eyeColor: .black)
                .offset(x: baseLength * 0.125,
                        y: baseLength * -0.15)
            }
            
            Image(symbol: .chevronDown)
                .arrangeShape(fontSize: baseLength * 0.1,
                              fontWeight: .bold,
                              offsetY: baseLength * 0.025)
        }
    }
}

struct Frog_Previews: PreviewProvider {
    static var previews: some View {
        Frog(baseLength: 400)
    }
}
