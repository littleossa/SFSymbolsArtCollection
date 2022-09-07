//
//  SFCharacter.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI
import SFUserFriendlySymbols

extension SFAlphabet {
    
    init(_ alphabet: Alphabet,
         color: Color = .black,
         frameColor: Color = .white,
         fontSize: CGFloat,
         fontWeight: Font.Weight = .regular,
         flipType: FlipType = .none,
         rotationDegrees: CGFloat = 0,
         offsetX: CGFloat = 0,
         offsetY: CGFloat = 0) {
        self.alphabet = alphabet
        self.color = color
        self.frameColor = frameColor
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.flipType = flipType
        self.rotationDegrees = rotationDegrees
        self.offsetX = offsetX
        self.offsetY = offsetY
    }
}

struct SFAlphabet: View {
    
    enum Alphabet: String {
        
        case a = "a.circle"
        case b = "b.circle"
        case c = "c.circle"
        case d = "d.circle"
        case e = "e.circle"
        case f = "f.circle"
        case g = "g.circle"
        case h = "h.circle"
        case i = "i.circle"
        case j = "j.circle"
        case k = "k.circle"
        case l = "l.circle"
        case m = "m.circle"
        case n = "n.circle"
        case o = "o.circle"
        case p = "p.circle"
        case q = "q.circle"
        case r = "r.circle"
        case s = "s.circle"
        case t = "t.circle"
        case u = "u.circle"
        case v = "v.circle"
        case w = "w.circle"
        case x = "x.circle"
        case y = "y.circle"
        case z = "z.circle"
        
        var symbolInCircle: SFSymbols {
            return SFSymbols(rawValue: self.rawValue) ?? .xmark
        }
    }
    
    private let alphabet: Alphabet
    private let color: Color
    /// Circle-frame color
    private let frameColor: Color
    private let fontSize: CGFloat
    private let fontWeight: Font.Weight
    private let flipType: FlipType
    private let rotationDegrees: CGFloat
    private let offsetX: CGFloat
    private let offsetY: CGFloat
        
    var body: some View {
        ZStack {
            
            Image(symbol: alphabet.symbolInCircle)
                .arrangeShape(color: color,
                              fontSize: fontSize,
                              fontWeight: fontWeight,
                              flipType: flipType,
                              rotationDegrees: rotationDegrees,
                              offsetX: offsetX,
                              offsetY: offsetY)
            
            // Hide Circle-Frame
            Group {
                
                Image(symbol: .circle)
                    .arrangeShape(color: frameColor,
                                  fontSize: fontSize * 1.1,
                                  fontWeight: fontWeight,
                                  flipType: flipType,
                                  rotationDegrees: rotationDegrees,
                                  offsetX: offsetX,
                                  offsetY: offsetY)
                
                Image(symbol: .circle)
                    .arrangeShape(color: frameColor,
                                  fontSize: fontSize * 1.05,
                                  fontWeight: fontWeight,
                                  flipType: flipType,
                                  rotationDegrees: rotationDegrees,
                                  offsetX: offsetX,
                                  offsetY: offsetY)
                
                Image(symbol: .circle)
                    .arrangeShape(color: frameColor,
                                  fontSize: fontSize,
                                  fontWeight: fontWeight,
                                  flipType: flipType,
                                  rotationDegrees: rotationDegrees,
                                  offsetX: offsetX,
                                  offsetY: offsetY)
                
                Image(symbol: .circle)
                    .arrangeShape(color: frameColor,
                                  fontSize: fontSize * 0.95,
                                  fontWeight: fontWeight,
                                  flipType: flipType,
                                  rotationDegrees: rotationDegrees,
                                  offsetX: offsetX,
                                  offsetY: offsetY)
                
                Image(symbol: .circle)
                    .arrangeShape(color: frameColor,
                                  fontSize: fontSize * 0.9,
                                  fontWeight: fontWeight,
                                  flipType: flipType,
                                  rotationDegrees: rotationDegrees,
                                  offsetX: offsetX,
                                  offsetY: offsetY)
            }
        }
    }
}

struct SFCharacter_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SFAlphabet(.a, fontSize: 200)
            SFAlphabet(.h, fontSize: 100)
            SFAlphabet(.a, fontSize: 25, fontWeight: .black)
            SFAlphabet(.a, fontSize: 10, fontWeight: .black)
            SFAlphabet(.a, fontSize: 1, fontWeight: .black)
        }
    }
}
