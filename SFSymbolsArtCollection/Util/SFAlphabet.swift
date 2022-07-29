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
    private let width: CGFloat
    private let height: CGFloat
    private let lineWeight: Font.Weight
    private let flipType: FlipType
    private let rotationDegrees: CGFloat
    private let offsetX: CGFloat
    private let offsetY: CGFloat
        
    var body: some View {
        ZStack {
            
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
                              width: width * 1.13,
                              height: height * 1.13,
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
                              width: width * 0.87,
                              height: height * 0.87,
                              lineWeight: lineWeight,
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
            SFAlphabet(.a, width: 200, height: 200, lineWeight: .black)
            
            SFAlphabet(.a, width: 100, height: 100, lineWeight: .black)
            
            SFAlphabet(.a, width: 50, height: 50, lineWeight: .black)
            
            SFAlphabet(.a, width: 25, height: 25, lineWeight: .black)
            
            SFAlphabet(.a, width: 10, height: 10, lineWeight: .black)
            
            SFAlphabet(.a, width: 1, height: 1, lineWeight: .black)
        }
    }
}
