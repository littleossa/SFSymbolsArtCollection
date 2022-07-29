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
            
            AnimalNose(noseTipColor: .darkBrown,
                       mouthColor: .darkBrown)
            .offset(x: 0, y: 30)
            
            DrawingSymbol(.line3Horizontal,
                          color: .darkBrown,
                          width: 30,
                          height: 20,
                          lineWeight: .regular)
            .offset(x: -50, y: 30)
            
            DrawingSymbol(.line3Horizontal,
                          color: .darkBrown,
                          width: 30,
                          height: 20,
                          lineWeight: .regular)
            .offset(x: 50, y: 30)
        }
    }
}

struct Lion_Previews: PreviewProvider {
    static var previews: some View {
        Lion()
    }
}
