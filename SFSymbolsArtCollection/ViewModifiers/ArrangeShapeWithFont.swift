//
//  ArrangeShape.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/03.
//

import SwiftUI

struct ArrangeShapeWithFontModifier: ViewModifier {
    
    let color: Color
    let fontSize: CGFloat
    let fontWeight: Font.Weight
    let flipType: FlipType
    let rotationDegrees: CGFloat
    let offsetX: CGFloat
    let offsetY: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize,
                          weight: fontWeight,
                          design: .default))
            .rotation3DEffect(.degrees(180),
                              axis: flipType.axis,
                              anchorZ: 1)
            .rotation3DEffect(.degrees(rotationDegrees),
                              axis: (x: 0, y: 0, z: -1),
                              anchorZ: 1)
            .offset(x: offsetX, y: offsetY)
            .foregroundColor(color)
    }
}

extension View {
    
    func arrangeShape(color: Color = .black,
                      fontSize: CGFloat,
                      fontWeight: Font.Weight = .regular,
                      flipType: FlipType = .none,
                      rotationDegrees: CGFloat = 0,
                      offsetX: CGFloat = 0,
                      offsetY: CGFloat = 0) -> some View {
        
        self.modifier(ArrangeShapeWithFontModifier(color: color,
                                                   fontSize: fontSize,
                                                   fontWeight: fontWeight,
                                                   flipType: flipType,
                                                   rotationDegrees: rotationDegrees,
                                                   offsetX: offsetX,
                                                   offsetY: offsetY))
    }
}
