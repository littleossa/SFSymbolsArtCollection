//
//  Bear.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Bear: View {
    var body: some View {
        ZStack {
            AnimalOutline(faceColor: .brown,
                        earColor: .palePink)
            
            AnimalEye(eyeColor: .darkBrown)
                .offset(x: 30, y: -16)
            
            AnimalEye(eyeColor: .darkBrown)
                .offset(x: -30, y: -16)
            
            AnimalNose(noseTipColor: .red,
                     mouthColor: .black)
                .offset(x: 0, y: 15)
        }
    }
}

struct Bear_Previews: PreviewProvider {
    static var previews: some View {
        Bear()
    }
}
