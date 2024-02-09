//
//  PartyAnimalsArtView+RawPosition.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension PartyAnimalsArtView {
    
    enum PawPosition: String, CaseIterable, Identifiable {
        case first
        case second
        case third
        case fourth
        
        struct Value {
            let color: Color
            let rotationDegrees: CGFloat
            let horizontalOffsetRatio: CGFloat
            let verticalOffsetRatio: CGFloat
        }
        
        var id: String { self.rawValue }
        
        var value: Value {
            switch self {
            case .first:
                Value(color: .red,
                      rotationDegrees: 24,
                      horizontalOffsetRatio: -0.34,
                      verticalOffsetRatio: -0.5)
            case .second:
                Value(color: .orange,
                      rotationDegrees: -24,
                      horizontalOffsetRatio: -0.14,
                      verticalOffsetRatio: -0.36)
            case .third:
                Value(color: .teal,
                      rotationDegrees: 30,
                      horizontalOffsetRatio: -0.3,
                      verticalOffsetRatio: 0.26)
            case .fourth:
                Value(color: .blue,
                      rotationDegrees: -14,
                      horizontalOffsetRatio: -0.14,
                      verticalOffsetRatio: 0.44)
            }
        }
    }
}

