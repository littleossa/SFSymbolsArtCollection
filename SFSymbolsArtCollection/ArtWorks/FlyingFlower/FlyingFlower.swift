//
//  FlyingFlower.swift
//  SFSymbolsArtCollection
//
//  Created by lil Ossa on 2022/04/26.
//

import SwiftUI

struct FlyingFlower: View {
    var body: some View {
        
        ZStack {
    
            Sky()
            
            VStack(spacing: 0) {
                Flower()
                Fire()
            }
            .rotationEffect(.degrees(-30))
            .offset(x: -10, y: 33)
        }
    }
}

struct TulipGarden_Previews: PreviewProvider {
    static var previews: some View {
        FlyingFlower()
    }
}
