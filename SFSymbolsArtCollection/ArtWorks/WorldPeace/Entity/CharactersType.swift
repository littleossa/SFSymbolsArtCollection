//
//  CharactersType.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/08.
//

import CoreGraphics

enum CharactersType {
    case world
    case peace
    
    func characterAppearances(with baseLength: CGFloat) -> [CharacterAppearance] {
        switch self {
        case .world:
            return [
                CharacterAppearance(alphabet: .w,
                                    color: .red,
                                    offsetX: 0),
                CharacterAppearance(alphabet: .o,
                                    color: .yellow,
                                    offsetX: baseLength * -0.05),
                CharacterAppearance(alphabet: .r,
                                    color: .green,
                                    offsetX: baseLength * -0.1),
                CharacterAppearance(alphabet: .l,
                                    color: .blue,
                                    offsetX: baseLength * -0.15),
                CharacterAppearance(alphabet: .d,
                                    color: .purple,
                                    offsetX: baseLength * -0.2)
            ]
        case .peace:
            return [
                CharacterAppearance(alphabet: .p,
                                    color: .cyan,
                                    offsetX: 0),
                CharacterAppearance(alphabet: .e,
                                    color: .pink,
                                    offsetX: baseLength * -0.05),
                CharacterAppearance(alphabet: .a,
                                    color: .mint,
                                    offsetX: baseLength * -0.1),
                CharacterAppearance(alphabet: .c,
                                    color: .indigo,
                                    offsetX: baseLength * -0.15),
                CharacterAppearance(alphabet: .e,
                                    color: .orange,
                                    offsetX: baseLength * -0.2)
            ]
        }
    }
}
