//
//  ElectricMagneticWaveLeftHand.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/03.
//

import SwiftUI

struct ElectricMagneticWaveLeftHand: View {
    
    let color: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.coneFill,
                          color: color,
                          width: 45,
                          height: 80,
                          flipType: .vertical)
            
            DrawingSymbol(.handRaisedFill,
                          color: color,
                          width: 50,
                          height: 50,
                          flipType: .horizontalAndVertical,
                          offsetX: -3,
                          offsetY: 30)
        }
    }
}

struct ElectricMagneticWaveLeftHand_Previews: PreviewProvider {
    static var previews: some View {
        ElectricMagneticWaveLeftHand(color: .blue)
    }
}
