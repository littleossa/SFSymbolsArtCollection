//
//  AnimationValues.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct AnimationValues {
    
    init(
        primaryColor: Color = .black,
        secondaryColor: Color = .black,
        fontWeight: Font.Weight = .regular,
        width: CGFloat,
        height: CGFloat,
        symbolNameVisibleValue: CGFloat = 1,
        rotationDegrees: CGFloat = 0,
        rotationAxis: (x: CGFloat, y: CGFloat, z: CGFloat) = (x: 0, y: 0, z: 0),
        offsetX: CGFloat = 0,
        offsetY: CGFloat = 0
    ) {
        self.primaryColor = primaryColor.resolve(in: .init())
        self.secondaryColor = secondaryColor.resolve(in: .init())
        self.fontWeightValue = fontWeight.animatableValue
        self.width = width
        self.height = height
        self.symbolNameVisibleValue = symbolNameVisibleValue
        self.rotationDegrees = rotationDegrees
        self.rotationAxis = rotationAxis
        self.offset = .init(width: offsetX, height: offsetY)
    }
    
    var primaryColor: Color.Resolved
    var secondaryColor: Color.Resolved
    var fontWeightValue: CGFloat
    var width: CGFloat
    var height: CGFloat
    var symbolNameVisibleValue: CGFloat
    var rotationDegrees: CGFloat
    var rotationAxis: (x: CGFloat, y: CGFloat, z: CGFloat)
    var offset: CGSize
    
    var fontWeight: Font.Weight {
        return .init(animatableValue: fontWeightValue)
    }
}
