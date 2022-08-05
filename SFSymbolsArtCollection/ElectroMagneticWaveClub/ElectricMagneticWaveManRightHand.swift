//
//  ElectricMagneticWaveManHand.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/03.
//

import SwiftUI

struct ElectricMagneticWaveManRightHand: View {
    
    let color: Color
    let backgroundColor: Color
    
    var body: some View {
        
        ZStack {
            DrawingSymbol(.coneFill,
                          color: color,
                          width: 45,
                          height: 80,
                          offsetY: 35)
            
            DrawingSymbol(.handRaisedFill,
                          color: color,
                          width: 50,
                          height: 50)
            
            ElectricMagneticWaveManMagnet(color: color)
                .offset(x: -1, y: -20)
            
            DrawingSymbol(.diamondFill,
                          color: .white,
                          width: 36,
                          height: 36,
                          offsetX: 25,
                          offsetY: 26)
            
            DrawingSymbol(.diamondFill,
                          color: .white,
                          width: 36,
                          height: 36,
                          offsetX: -28,
                          offsetY: 28)
        }
    }
}

struct ElectricMagneticWaveManRightHand_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()
            
            ElectricMagneticWaveManRightHand(color: .blue, backgroundColor: .white)
        }
    }
}
