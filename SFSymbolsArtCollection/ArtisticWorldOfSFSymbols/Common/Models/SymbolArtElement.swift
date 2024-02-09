//
//  SymbolArtElement.swift
//  SFSymbolsArtCollection
//
//  Created Lil Ossa
//

import SwiftUI

struct SymbolArtElement {
    
    let symbol: String
    let name: String
    let initialPrimaryColor: Color
    let initialSecondaryColor: Color
    let initialPosition: ArtWorkModel.InitialSymbolRow
    let primaryColor: Color
    let secondaryColor: Color
    let fontWeight: Font.Weight
    let widthRatio: CGFloat
    let heightRatio: CGFloat
    let rotationDegrees: CGFloat
    var flip: FlipType
    let horizontalOffsetRatio: CGFloat
    let verticalOffsetRatio: CGFloat
    let symbolCountToWaitFor: Int
    let zIndex: CGFloat
    
    init(
        symbol: String,
        name: String,
        initialPrimaryColor: Color = .black,
        initialSecondaryColor: Color = .black,
        initialPosition: ArtWorkModel.InitialSymbolRow,
        primaryColor: Color,
        secondaryColor: Color = .black,
        fontWeight: Font.Weight = .regular,
        widthRatio: CGFloat,
        heightRatio: CGFloat,
        rotationDegrees: CGFloat = 0,
        flip: FlipType = .none,
        horizontalOffsetRatio: CGFloat = 0,
        verticalOffsetRatio: CGFloat = 0,
        symbolCountToWaitFor: Int,
        zIndex: CGFloat = 0
    ) {
        self.symbol = symbol
        self.name = name
        self.initialPrimaryColor = initialPrimaryColor
        self.initialSecondaryColor = initialSecondaryColor
        self.initialPosition = initialPosition
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.fontWeight = fontWeight
        self.widthRatio = widthRatio
        self.heightRatio = heightRatio
        self.rotationDegrees = rotationDegrees
        self.flip = flip
        self.horizontalOffsetRatio = horizontalOffsetRatio
        self.verticalOffsetRatio = verticalOffsetRatio
        self.symbolCountToWaitFor = symbolCountToWaitFor
        self.zIndex = zIndex
    }
}
