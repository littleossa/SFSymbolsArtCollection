//
//  LargeFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/06.
//

import SwiftUI

// MARK: -  Initializer
extension LargeFirework {
    
    init(baseLength: CGFloat, color: Color, dotColor: Color) {
        
        self.baseLength = baseLength
        self.color = color
        self.dotColor = dotColor
        
        radioWaveAppearances = [
            RadioWaveAppearances(flipType: .none,
                                 rotationDegrees: 0,
                                 offset: Offset(x: baseLength * 0.095,
                                                y: 0)),
            RadioWaveAppearances(flipType: .horizontal,
                                 rotationDegrees: 0,
                                 offset: Offset(x: baseLength * -0.095,
                                                y: 0)),
            RadioWaveAppearances(flipType: .none,
                                 rotationDegrees: baseLength * 0.225,
                                 offset: Offset(x: 0,
                                                y: baseLength * -0.095)),
            RadioWaveAppearances(flipType: .none,
                                 rotationDegrees: baseLength * -0.225,
                                 offset: Offset(x: 0,
                                                y: baseLength * 0.095))
        ]
    }
    
    struct RadioWaveAppearances: Hashable {
        
        let flipType: FlipType
        let rotationDegrees: Double
        let offset: Offset
    }
}

struct LargeFirework: View {
    
    let baseLength: CGFloat
    let color: Color
    let dotColor: Color
    let radioWaveAppearances: [RadioWaveAppearances]
    
    var body: some View {
        
        ZStack {
            
            ForEach(radioWaveAppearances, id: \.self) { appearance in
                Image(symbol: .dotRadiowavesRight)
                    .arrangeShape(color: color,
                                  fontSize: baseLength * 0.25,
                                  fontWeight: .bold,
                                  flipType: appearance.flipType,
                                  rotationDegrees: appearance.rotationDegrees,
                                  offsetX: appearance.offset.x,
                                  offsetY: appearance.offset.y)
            }
            
            Image(symbol: .circleDotted)
                .arrangeShape(color: dotColor,
                              fontSize: baseLength * 0.55,
                              fontWeight: .ultraLight,
                              rotationDegrees: baseLength * 0.225)
            
            Image(symbol: .circleFill)
                .arrangeShape(color: dotColor,
                              fontSize: baseLength * 0.085)
        }
    }
}

struct Firework_Previews: PreviewProvider {
    static var previews: some View {
        LargeFirework(baseLength: 400,
                      color: .red,
                      dotColor: .yellow)
    }
}
