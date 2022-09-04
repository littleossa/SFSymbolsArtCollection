//
//  SymbolArrangementAppearance.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/04.
//

import SwiftUI

struct SymbolArrangementAppearance {
    
    init(color: Color = .black,
         fontSizeMagnification: CGFloat = 0,
         widthMagnification: CGFloat = 0,
         heightMagnification: CGFloat = 0,
         fontWeight: Font.Weight = .regular,
         flipType: FlipType = .none,
         rotationDegrees: CGFloat = 0,
         offsetXMagnification: CGFloat = 0,
         offsetYMagnification: CGFloat = 0) {
        
        self.color = color
        self.fontSizeMagnification = fontSizeMagnification
        self.widthMagnification = widthMagnification
        self.heightMagnification = heightMagnification
        self.fontWeight = fontWeight
        self.flipType = flipType
        self.rotationDegrees = rotationDegrees
        self.offsetXMagnification = offsetXMagnification
        self.offsetYMagnification = offsetYMagnification
    }
    
    let color: Color
    let fontSizeMagnification: CGFloat
    let widthMagnification: CGFloat
    let heightMagnification: CGFloat
    let fontWeight: Font.Weight
    let flipType: FlipType
    let rotationDegrees: CGFloat
    let offsetXMagnification: CGFloat
    let offsetYMagnification: CGFloat
}
