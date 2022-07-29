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
         shadowColor: Color? = nil,
         width: CGFloat,
         height: CGFloat,
         lineWeight: Font.Weight = .regular,
         flipType: FlipType = .none,
         rotationDegrees: CGFloat = 0,
         offsetX: CGFloat = 0,
         offsetY: CGFloat = 0) {
        self.alphabet = alphabet
        self.color = color
        self.frameColor = frameColor
        self.shadowColor = shadowColor
        self.width = width
        self.height = height
        self.lineWeight = lineWeight
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
    private let shadowColor: Color?
    private let width: CGFloat
    private let height: CGFloat
    private let lineWeight: Font.Weight
    private let flipType: FlipType
    private let rotationDegrees: CGFloat
    private let offsetX: CGFloat
    private let offsetY: CGFloat
    
    private var isShadowed: Bool {
        return shadowColor != nil
    }
        
    var body: some View {
        ZStack {
            if isShadowed {
                DrawingSymbol(alphabet.symbolInCircle,
                              color: shadowColor ?? .gray,
                              width: width,
                              height: height,
                              lineWeight: lineWeight,
                              flipType: flipType,
                              rotationDegrees: rotationDegrees,
                              offsetX: offsetX + 4,
                              offsetY: offsetY)
            }
            
            DrawingSymbol(alphabet.symbolInCircle,
                          color: color,
                          width: width,
                          height: height,
                          lineWeight: lineWeight,
                          flipType: flipType,
                          rotationDegrees: rotationDegrees,
                          offsetX: offsetX,
                          offsetY: offsetY)
            
            // Hide Circle-Frame
            Group {
                DrawingSymbol(.circle,
                              color: frameColor,
                              width: width * 1.04,
                              height: height * 1.04,
                              lineWeight: lineWeight,
                              flipType: flipType,
                              rotationDegrees: rotationDegrees,
                              offsetX: offsetX,
                              offsetY: offsetY)
                
                DrawingSymbol(.circle,
                              color: frameColor,
                              width: width,
                              height: height,
                              lineWeight: lineWeight,
                              flipType: flipType,
                              rotationDegrees: rotationDegrees,
                              offsetX: offsetX,
                              offsetY: offsetY)
                
                DrawingSymbol(.circle,
                              color: frameColor,
                              width: width * 0.96,
                              height: height * 0.96,
                              lineWeight: lineWeight,
                              flipType: flipType,
                              rotationDegrees: rotationDegrees,
                              offsetX: offsetX,
                              offsetY: offsetY)
            }
            
            if isShadowed {
                DrawingSymbol(.circle,
                              color: frameColor,
                              width: width,
                              height: height,
                              lineWeight: lineWeight,
                              flipType: flipType,
                              rotationDegrees: rotationDegrees,
                              offsetX: offsetX + 6,
                              offsetY: offsetY)
            }
        }
    }
}

struct SFCharacter_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SFAlphabet(.a, width: 100, height: 100, lineWeight: .black)
            
            SFAlphabet(.a, shadowColor: .gray, width: 100, height: 100, lineWeight: .black)
        }
    }
}
