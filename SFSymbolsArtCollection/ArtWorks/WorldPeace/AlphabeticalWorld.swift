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
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetY: 2)
                
                SFAlphabet(.o,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -20,
                           offsetY: 2)
                
                SFAlphabet(.r,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.l,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.d,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -80,
                           offsetY: 2)
            }
            .offset(x: 47, y: 0)
            
            HStack(spacing: 0) {

                SFAlphabet(.w,
                           color: .red,
                           fontSize: 70,
                           fontWeight: .bold)
                SFAlphabet(.o,
                           color: .yellow,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -20)
                
                SFAlphabet(.r,
                           color: .green,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.l,
                           color: .blue,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.d,
                           color: .purple,
                           fontSize: 70,
                           fontWeight: .bold,
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
