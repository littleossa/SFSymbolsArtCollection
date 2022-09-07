//
//  Bear.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Bear: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            AnimalOutline(baseLength: baseLength,
                          faceColor: .brown,
                          earColor: .palePink)
            
            // Eyes
            Group {
                AnimalEye(baseLength: baseLength,
                          eyeColor: .darkBrown)
                .offset(x: baseLength * 0.075,
                        y: baseLength * -0.04)
                
                AnimalEye(baseLength: baseLength,
                          eyeColor: .darkBrown)
                .offset(x: baseLength * -0.075,
                        y: baseLength * -0.04)
            }
            
            AnimalNose(baseLength: baseLength,
                       noseTipColor: .red,
                       mouthColor: .black)
            .offset(x: 0,
                    y: baseLength * 0.0375)
        }
    }
}

struct Bear_Previews: PreviewProvider {
    static var previews: some View {
        Bear(baseLength: 400)
    }
}
