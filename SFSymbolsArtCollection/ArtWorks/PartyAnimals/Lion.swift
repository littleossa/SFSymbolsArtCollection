//
//  Lion.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Lion: View {
    var body: some View {
        ZStack {
            DrawingSymbol(.sealFill,
                          color: .orange,
                          width: 240,
                          height: 240,
                          lineWeight: .ultraLight)
            
            DrawingSymbol(.sealFill,
                          color: .orange,
                          width: 240,
                          height: 240,
                          lineWeight: .ultraLight,
                          rotationDegrees: 20)
            
            AnimalOutline(faceColor: .yellow,
                          earColor: .yellow)
                .offset(x: 0, y: 15)
            
            AnimalEye(eyeColor: .darkBrown)
                .offset(x: -30, y: -1)
            
            AnimalEye(eyeColor: .darkBrown)
                .offset(x: 30, y: -1)
            
            AnimalWhiskers(color: .darkBrown,
                           backgroundColor: .yellow)
            .offset(x: -20, y: 30)
            
            AnimalWhiskers(color: .darkBrown,
                           backgroundColor: .yellow)
            .offset(x: -20, y: 30)
            .rotation3DEffect(.degrees(180),
                              axis: FlipType.horizontal.axis,
                              anchorZ: 1)
            
            AnimalNose(noseTipColor: .darkBrown,
                       mouthColor: .darkBrown)
            .offset(x: 0, y: 30)
        }
    }
}

struct Lion_Previews: PreviewProvider {
    static var previews: some View {
        Lion()
    }
}
