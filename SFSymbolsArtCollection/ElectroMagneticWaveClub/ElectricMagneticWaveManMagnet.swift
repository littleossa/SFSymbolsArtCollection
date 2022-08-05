//
//  ElectricMagneticWaveManMagnet.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/03.
//

import SwiftUI

struct ElectricMagneticWaveManMagnet: View {
    
    let color: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.underline,
                          width: 83,
                          height: 103,
                          lineWeight: .bold)
            
            DrawingSymbol(.underline,
                          color: color,
                          width: 80,
                          height: 100,
                          lineWeight: .bold)
            
            DrawingSymbol(.rectangleFill,
                          color: .gray,
                          width: 23,
                          height: 20,
                          offsetX: 30,
                          offsetY: -41)
            
            DrawingSymbol(.rectangleFill,
                          color: .gray,
                          width: 23,
                          height: 20,
                          offsetX: -30,
                          offsetY: -41)
        }
    }
}

struct ElectricMagneticWaveManMagnet_Previews: PreviewProvider {
    static var previews: some View {
        ElectricMagneticWaveManMagnet(color: .blue)
    }
}
