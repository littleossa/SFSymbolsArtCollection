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
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetY: 2)
                
                SFAlphabet(.e,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -20,
                           offsetY: 2)
                
                SFAlphabet(.a,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.c,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.e,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -80,
                           offsetY: 2)
            }
            .offset(x: 47, y: 0)
            
            HStack(spacing: 0) {
                SFAlphabet(.p,
                           color: .cyan,
                           width: 70,
                           height: 70,
                           lineWeight: .bold)
                
                SFAlphabet(.e,
                           color: .pink,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -20)
                
                SFAlphabet(.a,
                           color: .mint,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -40,
                           offsetY: 2)
                
                SFAlphabet(.c,
                           color: .indigo,
                           width: 70,
                           height: 70,
                           lineWeight: .bold,
                           offsetX: -60,
                           offsetY: 2)
                
                SFAlphabet(.e,
                           color: .orange,
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

struct AlphabeticalPeace_Previews: PreviewProvider {
    static var previews: some View {
        AlphabeticalPeace()
    }
}
