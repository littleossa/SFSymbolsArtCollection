//
//  ElectroMagneticWaveMan.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI
import SFUserFriendlySymbols

struct ElectroMagneticWaveMan: View {
    
    enum MagneticPole {
        case s
        case n
        
        var color: Color {
            switch self {
            case .s:
                return .blue
            case .n:
                return .red
            }
        }
        
        var markSymbol: SFSymbols {
            switch self {
            case .s:
                return .sSquare
            case .n:
                return .nSquare
            }
        }
    }
    
    let magneticPole: MagneticPole
    let backgroundColor: Color
    
    private var color: Color {
        return magneticPole.color
    }
    
    var body: some View {
        ZStack {
            ElectricMagneticWaveManBody(color: color)
            
            ElectricMagneticWaveLeftHand(color: color)
                .offset(x: 63, y: 40)
            ElectroMagneticWaveManFace(color: color,
                                       markSymbol: magneticPole.markSymbol)
            .offset(x: 10, y: -130)
            
            ElectricMagneticWaveManRightHand(color: color,
                                             backgroundColor: .white)
            .offset(x: -60, y: -150)
            
            DrawingSymbol(.trainSideFrontCar,
                          color: color,
                          width: 35,
                          height: 20,
                          flipType: .vertical,
                          rotationDegrees: -90,
                          offsetX: -29,
                          offsetY: -124)
            
            DrawingSymbol(.shieldFill,
                          color: color,
                          width: 20,
                          height: 25,
                          offsetX: -29,
                          offsetY: -124)
        }
    }
}

struct ElectroMagneticWaveMan_Previews: PreviewProvider {
    static var previews: some View {
        ElectroMagneticWaveMan(magneticPole: .n, backgroundColor: .white)
    }
}
