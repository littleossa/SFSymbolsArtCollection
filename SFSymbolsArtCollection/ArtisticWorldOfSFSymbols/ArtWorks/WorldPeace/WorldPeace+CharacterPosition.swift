//
//  WorldPeace+CharacterPosition.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension WorldPeaceArtView {
    
    enum CharacterPosition: String, CaseIterable, Identifiable {
        case topFirst
        case topSecond
        case topThird
        case topFourth
        case topFifth
        case bottomFirst
        case bottomSecond
        case bottomThird
        case bottomFourth
        case bottomFifth
        
        struct Value {
            let character: String
            let color: Color
            let initialPosition: ArtWorkModel.InitialSymbolRow
            let horizontalOffsetRatio: CGFloat
            let verticalOffsetRatio: CGFloat
        }
        
        var id: String { self.rawValue }
        
        var value: Value {
            switch self {
            case .topFirst:
                Value(character: "w",
                      color: .red,
                      initialPosition: .second(.second),
                      horizontalOffsetRatio: -0.34,
                      verticalOffsetRatio: -0.4)
            case .topSecond:
                Value(character: "o",
                      color: .yellow,
                      initialPosition: .third(.sixth),
                      horizontalOffsetRatio: -0.17,
                      verticalOffsetRatio: -0.4)
            case .topThird:
                Value(character: "r",
                      color: .green,
                      initialPosition: .second(.first),

                      horizontalOffsetRatio: 0,
                      verticalOffsetRatio: -0.4)
            case .topFourth:
                Value(character: "l",
                      color: .blue,
                      initialPosition: .third(.fifth),
                      horizontalOffsetRatio: 0.17,
                      verticalOffsetRatio: -0.4)
            case .topFifth:
                Value(character: "d",
                      color: .purple,
                      initialPosition: .third(.third),
                      horizontalOffsetRatio: 0.34,
                      verticalOffsetRatio: -0.4)
            case .bottomFirst:
                Value(character: "p",
                      color: .teal,
                      initialPosition: .third(.seventh),
                      horizontalOffsetRatio: -0.34,
                      verticalOffsetRatio: 0.4)
            case .bottomSecond:
                Value(character: "e",
                      color: .pink,
                      initialPosition: .third(.fourth),
                      horizontalOffsetRatio: -0.17,
                      verticalOffsetRatio: 0.4)
            case .bottomThird:
                Value(character: "a",
                      color: .mint,
                      initialPosition: .third(.first),
                      horizontalOffsetRatio: 0,
                      verticalOffsetRatio: 0.4)
            case .bottomFourth:
                Value(character: "c",
                      color: .indigo,
                      initialPosition: .third(.second),
                      horizontalOffsetRatio: 0.17,
                      verticalOffsetRatio: 0.4)
            case .bottomFifth:
                Value(character: "e",
                      color: .orange,
                      initialPosition: .third(.fourth),
                      horizontalOffsetRatio: 0.34,
                      verticalOffsetRatio: 0.4)
            }
        }
    }
}
