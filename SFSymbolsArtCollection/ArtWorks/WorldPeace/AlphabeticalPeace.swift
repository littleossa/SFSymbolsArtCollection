//
//  Hello.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AlphabeticalPeace: View {
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                SFAlphabet(.p,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetY: 2)
                
                SFAlphabet(.e,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -20,
                           offsetY: 2)
                
                SFAlphabet(.a,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.c,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.e,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -80,
                           offsetY: 2)
            }
            .offset(x: 47, y: 0)
            
            HStack(spacing: 0) {
                SFAlphabet(.p,
                           color: .cyan,
                           fontSize: 70,
                           fontWeight: .bold)
                
                SFAlphabet(.e,
                           color: .pink,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -20)
                
                SFAlphabet(.a,
                           color: .mint,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.c,
                           color: .indigo,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.e,
                           color: .orange,
                           fontSize: 70,
                           fontWeight: .bold,
                           offsetX: -80,
                           offsetY: 2)
            }
            .offset(x: 45, y: 0)
        }
    }
}

struct AlphabeticalPeace_Previews: PreviewProvider {
    static var previews: some View {
        AlphabeticalPeace()
    }
}
