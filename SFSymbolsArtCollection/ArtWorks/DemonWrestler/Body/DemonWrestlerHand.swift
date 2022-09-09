//
//  ElectricMagneticWaveLeftHand.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/03.
//

import SwiftUI

struct DemonWrestlerHand: View {
    
    enum HandType {
        case left
        case right
        
        var appearance: HandAppearance {
            switch self {
            case .left:
                return HandAppearance(coneFlipType: .vertical,
                                      handFlipType: .horizontalAndVertical,
                                      offsetYMagnification: 0.0875)
            case .right:
                return HandAppearance(coneFlipType: .none,
                                      handFlipType: .none,
                                      offsetYMagnification: -0.0875)
            }
        }
        
        struct HandAppearance {
            let coneFlipType: FlipType
            let handFlipType: FlipType
            let offsetYMagnification: CGFloat
        }
    }
    
    let type: HandType
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            Image(symbol: .coneFill)
                .arrangeShape(width: baseLength * 0.1125,
                              height: baseLength * 0.2,
                              flipType: type.appearance.coneFlipType)
            
            Image(symbol: .handRaisedFill)
                .arrangeShape(fontSize: baseLength * 0.1375,
                              flipType: type.appearance.handFlipType,
                              offsetY: baseLength * type.appearance.offsetYMagnification)
        }
    }
}

struct DemonWrestlerHand_Previews: PreviewProvider {
    static var previews: some View {
        DemonWrestlerHand(type: .left,
                          baseLength: 400)
        
        DemonWrestlerHand(type: .right,
                          baseLength: 400)
    }
}
