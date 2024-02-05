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
    
    var initialSymbolLength: CGFloat {
        baseLength * 0.06
    }
    
    /// The value calculated from baseLength using the given ratio.
    func calculatingProportionalValue(withRatio ratio: CGFloat) -> CGFloat {
        return baseLength * ratio
    }
    
    func waitingTime(forCount count: Int) -> Double {
        return animationDurationPerSymbol * Double(count)
    }
}
