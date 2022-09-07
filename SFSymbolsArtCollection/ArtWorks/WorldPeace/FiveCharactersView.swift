//
//  FiveCharactersView.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/08.
//

import SwiftUI

// MARK: - Initializer
extension FiveCharactersView {
    
    init(type: CharactersType, baseLength: CGFloat) {
        self.baseLength = baseLength
        characters = type.characterAppearances(with: baseLength)
    }
}

struct FiveCharactersView: View {
    
    let baseLength: CGFloat
    let characters: [CharacterAppearance]
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                ForEach(characters, id: \.self) { character in
                    SFAlphabet(character.alphabet,
                               fontSize: baseLength * 0.175,
                               fontWeight: .bold,
                               offsetX: character.offsetX)
                }
            }
            .offset(x: baseLength * 0.12,
                    y: 0)
            
            HStack(spacing: 0) {
                ForEach(characters, id: \.self) { character in
                    SFAlphabet(character.alphabet,
                               color: character.color,
                               fontSize: baseLength * 0.175,
                               fontWeight: .bold,
                               offsetX: character.offsetX,
                               offsetY: 0)
                }
            }
            .offset(x: baseLength * 0.1125,
                    y: 0)
        }
    }
}

struct FiveCharactersView_Previews: PreviewProvider {
    static var previews: some View {
        FiveCharactersView(type: .world, baseLength: 400)
        FiveCharactersView(type: .peace, baseLength: 400)
    }
}
