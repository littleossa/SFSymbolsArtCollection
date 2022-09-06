//
//  AlphabeticalWorld.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AlphabeticalWorld: View {
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                SFAlphabet(.w,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetY: 2)
                
                SFAlphabet(.o,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -20,
                           offsetY: 2)
                
                SFAlphabet(.r,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.l,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.d,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -80,
                           offsetY: 2)
            }
            .offset(x: 47, y: 0)
            
            HStack(spacing: 0) {

                SFAlphabet(.w,
                           color: .red,
                           width: 70,
                           height: 70,
                           lineWeight: .bold)
                SFAlphabet(.o,
                           color: .yellow,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -20)
                
                SFAlphabet(.r,
                           color: .green,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.l,
                           color: .blue,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.d,
                           color: .purple,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -80,
                           offsetY: 2)
            }
            .offset(x: 45, y: 0)
        }
    }
}

struct AlphabeticalWorld_Previews: PreviewProvider {
    static var previews: some View {
        AlphabeticalWorld()
    }
}
