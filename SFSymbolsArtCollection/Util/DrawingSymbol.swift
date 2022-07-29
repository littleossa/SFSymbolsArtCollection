//
//  DrawingSymbol.swift
//  SFSymbolsArtCollection
//
//

import SwiftUI
import SFUserFriendlySymbols

struct DrawingSymbol: View {
    
    private let symbol: SFSymbols
    private let color: Color
    private let width: CGFloat
    private let height: CGFloat
    private let lineWeight: Font.Weight
    private let flipType: FlipType
    private let rotationDegrees: CGFloat
    private let offsetX: CGFloat
    private let offsetY: CGFloat
    
    init(_ symbol: SFSymbols,
         color: Color = .black,
         width: CGFloat,
         height: CGFloat,
         lineWeight: Font.Weight = .regular,
         flipType: FlipType = .none,
         rotationDegrees: CGFloat = 0,
         offsetX: CGFloat = 0,
         offsetY: CGFloat = 0) {
        self.symbol = symbol
        self.width = width
        self.height = height
        self.lineWeight = lineWeight
        self.flipType = flipType
        self.rotationDegrees = rotationDegrees
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.color = color
    }
    
    var body: some View {
        
        Image(symbol: symbol)
            .resizable()
            .frame(width: width,
                   height: height)
            .font(.body.weight(lineWeight))
            .rotation3DEffect(.degrees(180),
                              axis: flipType.axis,
                              anchorZ: 1)
            .rotation3DEffect(.degrees(rotationDegrees),
                              axis: (x: 0, y: 0, z: -1), anchorZ: 1)
            .offset(x: offsetX, y: offsetY)
            .foregroundColor(color)
    }
}

struct DrawingSymbol_Previews: PreviewProvider {
    static var previews: some View {
        DrawingSymbol(.case,
                      color: .gray,
                      width: 100,
                      height: 100,
                      lineWeight: .ultraLight,
                      flipType: .horizontal,
                      rotationDegrees: 0)
    }
}
