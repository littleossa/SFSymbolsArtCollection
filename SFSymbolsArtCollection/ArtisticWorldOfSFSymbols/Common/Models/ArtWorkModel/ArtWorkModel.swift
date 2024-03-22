//
//  ArtWorkModel.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

@Observable
class ArtWorkModel {
    
    /// this model is for Xcode preview that provides base length for iPad Pro 12.9.
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
        case .none:
            ratio = 0
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
    
    /// Calculates and returns the proportional value based on the provided ratio.
    ///
    /// - Parameters:
    ///   - ratio: The ratio used for calculation.
    ///   - shouldResizeForCoverImage: A Boolean value indicating whether the value should be adjusted for cover arts. Default is false.
    /// - Returns: The calculated proportional value.
    func calculatingProportionalValue(withRatio ratio: CGFloat, shouldResizeForCoverArt: Bool = false) -> CGFloat {
        
        if shouldResizeForCoverArt {
            return (galleryColumnLength - galleryColumnSpacing) * ratio
        }
        return baseLength * ratio
    }
    
    func waitingTime(forCount count: Int) -> Double {
        return animationDurationPerSymbol * Double(count)
    }
}
