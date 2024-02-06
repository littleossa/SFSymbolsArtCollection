//
//  ArtWorkModel.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

@Observable
class ArtWorkModel {
    
    static let preview = ArtWorkModel(screenSize: CGSize(width: 1024, height: 1024))
        
    init(screenSize: CGSize) {
        let width = screenSize.width
        let height = screenSize.height
        self.baseLength = width < height ? width : height
    }
    
    private let baseLength: CGFloat
    
    let animationDurationPerSymbol: Double = 1.5
    let galleryColumnSpacing: CGFloat = 32
    
    /// Art works column count in gallery
    var galleryColumnCount: Int {
        if UIDevice.current.isPad {
            return 4
        }
        return 2
    }
    
    var galleryColumnLength: CGFloat {
        let columnCount = CGFloat(galleryColumnCount)
        let padding = galleryColumnSpacing
        return (baseLength / columnCount - padding)
    }
    
    var initialSymbolLength: Double {
        return baseLength * 0.06
    }
    
    func calculatingInitialOffsetX(forPosition symbolRow: InitialSymbolRow) -> CGFloat {
        let ratio: CGFloat
        switch symbolRow {
        case let .first(symbolColumn):
            ratio = symbolColumn.offsetXRatio
        case let .second(symbolColumn):
            ratio = symbolColumn.offsetXRatio
        case let .third(symbolColumn):
            ratio = symbolColumn.offsetXRatio
        }
        return calculatingProportionalValue(withRatio: ratio)
    }
    
    func calculatingInitialOffsetY(forPosition symbolRow: InitialSymbolRow) -> CGFloat {
        return calculatingProportionalValue(withRatio: symbolRow.offsetYRatio)
    }
    
    /// The value calculated from baseLength using the given ratio.
    func calculatingProportionalValue(withRatio ratio: CGFloat, forPreview isForPreview: Bool = false) -> CGFloat {
        
        if isForPreview {
            return (galleryColumnLength - galleryColumnSpacing) * ratio
        }
        return baseLength * ratio
    }
    
    func waitingTime(forCount count: Int) -> Double {
        return animationDurationPerSymbol * Double(count)
    }
}

// MARK: - BottomColumnSymbol
extension ArtWorkModel {
    
    enum InitialSymbolRow {
        case first(InitialSymbolColumn)
        case second(InitialSymbolColumn)
        case third(InitialSymbolColumn)
        
        enum InitialSymbolColumn {
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
        
        var offsetYRatio: CGFloat {
            switch self {
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
