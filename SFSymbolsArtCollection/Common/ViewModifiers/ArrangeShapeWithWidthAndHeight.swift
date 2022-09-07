//
//  ArrangeShapeWidthAndHeight.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/03.
//

import Foundation

import SwiftUI

struct ArrangeShapeWithWidthAndHeightModifier: ViewModifier {
    
    let color: Color
    let width: CGFloat?
    let height: CGFloat?
    let fontWeight: Font.Weight
    let flipType: FlipType
    let rotationDegrees: CGFloat
    let offsetX: CGFloat
    let offsetY: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: width,
                   height: height)
            .font(.body.weight(fontWeight))
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

extension Image {
    
    func arrangeShape(color: Color = .black,
                      width: CGFloat? = nil,
                      height: CGFloat? = nil,
                      fontWeight: Font.Weight = .regular,
                      flipType: FlipType = .none,
                      rotationDegrees: CGFloat = 0,
                      offsetX: CGFloat = 0,
                      offsetY: CGFloat = 0) -> some View {
        
        self
            .resizable()
            .modifier(ArrangeShapeWithWidthAndHeightModifier(color: color,
                                                             width: width,
                                                             height: height,
                                                             fontWeight: fontWeight,
                                                             flipType: flipType,
                                                             rotationDegrees: rotationDegrees,
                                                             offsetX: offsetX,
                                                             offsetY: offsetY))
    }
}
