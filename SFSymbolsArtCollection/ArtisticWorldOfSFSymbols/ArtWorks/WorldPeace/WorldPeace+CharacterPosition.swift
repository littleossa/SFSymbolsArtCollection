//
//  WorldPeace+CharacterPosition.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

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
        let horizontalOffsetRatio: CGFloat
        let verticalOffsetRatio: CGFloat
    }
    
    var id: String { self.rawValue }
    
    var value: Value {
        switch self {
        case .topFirst:
            Value(character: "w",
                  color: .red,
                  horizontalOffsetRatio: -0.34,
                  verticalOffsetRatio: -0.4)
        case .topSecond:
            Value(character: "o",
                  color: .yellow,
                  horizontalOffsetRatio: -0.17,
                  verticalOffsetRatio: -0.4)
        case .topThird:
            Value(character: "r",
                  color: .green,
                  horizontalOffsetRatio: 0,
                  verticalOffsetRatio: -0.4)
        case .topFourth:
            Value(character: "l",
                  color: .blue,
                  horizontalOffsetRatio: 0.17,
                  verticalOffsetRatio: -0.4)
        case .topFifth:
            Value(character: "d",
                  color: .purple,
                  horizontalOffsetRatio: 0.34,
                  verticalOffsetRatio: -0.4)
        case .bottomFirst:
            Value(character: "p",
                  color: .teal,
                  horizontalOffsetRatio: -0.34,
                  verticalOffsetRatio: 0.4)
        case .bottomSecond:
            Value(character: "e",
                  color: .pink,
                  horizontalOffsetRatio: -0.17,
                  verticalOffsetRatio: 0.4)
        case .bottomThird:
            Value(character: "a",
                  color: .mint,
                  horizontalOffsetRatio: 0,
                  verticalOffsetRatio: 0.4)
        case .bottomFourth:
            Value(character: "c",
                  color: .indigo,
                  horizontalOffsetRatio: 0.17,
                  verticalOffsetRatio: 0.4)
        case .bottomFifth:
            Value(character: "e",
                  color: .orange,
                  horizontalOffsetRatio: 0.34,
                  verticalOffsetRatio: 0.4)
        }
    }
}
