//
//  Image+arrangeShape.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension Image {
    
    func arrangeShape(
        primaryColor: Color = .black,
        secondaryColor: Color = .black,
        fontWeight: Font.Weight = .regular,
        width: CGFloat,
        height: CGFloat,
        rotationDegrees: CGFloat = 0,
        flip: FlipType = .none,
        horizontalOffset: CGFloat = 0,
        verticalOffset: CGFloat = 0
    ) -> some View {
        self
            .resizable()
            .foregroundStyle(primaryColor, secondaryColor)
            .fontWeight(fontWeight)
            .frame(width: width, height: height)
            .rotationEffect(.degrees(rotationDegrees))
            .rotation3DEffect(.degrees(180), axis: flip.axis)
            .offset(x: horizontalOffset,
                    y: verticalOffset)
    }
}

