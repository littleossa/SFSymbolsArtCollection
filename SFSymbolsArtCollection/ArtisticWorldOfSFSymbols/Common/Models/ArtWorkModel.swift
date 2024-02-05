//
//  ArtWorkModel.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

@Observable
class ArtWorkModel {
        
    init(screenSize: CGSize) {
        let width = screenSize.width
        let height = screenSize.height
        self.baseLength = width < height ? width : height
    }
    
    private let baseLength: CGFloat
    
    let animationDurationPerSymbol: Double = 1.5
    
    var initialSymbolLength: Double {
        return baseLength * 0.06
    }
    
    var offsetYForBottomColumn: CGFloat {
        return calculatingProportionalValue(withRatio: 0.5)
    }
    
    func calculatingOffsetX(forBottomColumn bottomColumn: BottomColumnSymbol) -> CGFloat {
        return calculatingProportionalValue(withRatio: bottomColumn.offsetXRatio)
    }
    
    /// The value calculated from baseLength using the given ratio.
    func calculatingProportionalValue(withRatio ratio: CGFloat) -> CGFloat {
        return baseLength * ratio
    }
    
    func waitingTime(forCount count: Int) -> Double {
        return animationDurationPerSymbol * Double(count)
    }
}

// MARK: - BottomColumnSymbol
extension ArtWorkModel {
    
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
