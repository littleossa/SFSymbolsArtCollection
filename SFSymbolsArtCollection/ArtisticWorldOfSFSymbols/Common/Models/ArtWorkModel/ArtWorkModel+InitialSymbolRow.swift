//
//  ArtWorkModel+InitialSymbolRow.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

// MARK: - BottomColumnSymbol
extension ArtWorkModel {
    
    enum InitialSymbolRow {
        case none
        case first(InitialSymbolColumn)
        case second(InitialSymbolColumn)
        case third(InitialSymbolColumn)
        
        enum InitialSymbolColumn {
            case first
            case second
            case third
            case fourth
            case fifth
            case sixth
            case seventh
            
            var offsetXRatio: CGFloat {
                switch self {
                case .first:
                    -0.42
                case .second:
                    -0.28
                case .third:
                    -0.14
                case .fourth:
                    0
                case .fifth:
                    0.14
                case .sixth:
                    0.28
                case .seventh:
                    0.42
                }
            }
        }
        
        var offsetYRatio: CGFloat {
            switch self {
            case .none:
                0
            case .first:
                0.63
            case .second:
                0.34
            case .third:
                0.5
            }
        }
    }
    
    enum BottomColumnSymbol {
        case first
        case second
        case third
        case forth
        case fifth
        case sixth
        case seventh
        
        var offsetXRatio: CGFloat {
            switch self {
            case .first:
                -0.42
            case .second:
                -0.28
            case .third:
                -0.14
            case .forth:
                0
            case .fifth:
                0.14
            case .sixth:
                0.28
            case .seventh:
                0.42
            }
        }
    }
}
