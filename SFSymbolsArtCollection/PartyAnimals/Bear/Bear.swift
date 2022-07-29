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
            BearOutline()
            
            AnimalEye(eyeColor: .darkBrown)
                .offset(x: 30, y: -16)
            
            AnimalEye(eyeColor: .darkBrown)
                .offset(x: -30, y: -16)
            
            BearNose()
                .offset(x: 0, y: 15)
        }
    }
}

struct Bear_Previews: PreviewProvider {
    static var previews: some View {
        Bear()
    }
}
